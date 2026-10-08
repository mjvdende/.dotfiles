_openshift_require_settings() {
  local setting
  for setting in "$@"; do
    if [[ -z "${(P)setting}" ]]; then
      print -u2 "Error: $setting must be set in ~/.dotfiles/.env"
      return 1
    fi
  done
}

rosa-login() {
  _openshift_require_settings OPENSHIFT_API_SERVER OPENSHIFT_LOGIN_CONTEXT || return 1

  if oc login --web "$OPENSHIFT_API_SERVER"; then
    local current_context
    current_context=$(oc config current-context) || return 1

    if [[ "$current_context" != "$OPENSHIFT_LOGIN_CONTEXT" ]]; then
      oc config delete-context "$OPENSHIFT_LOGIN_CONTEXT" &>/dev/null || true
      oc config rename-context "$current_context" "$OPENSHIFT_LOGIN_CONTEXT"
      print "Successfully logged in and renamed context to '$OPENSHIFT_LOGIN_CONTEXT'."
    fi
  else
    print -u2 "OpenShift login failed; context was not renamed."
    return 1
  fi
}

rosa-login-sa() {
  _openshift_require_settings \
    OPENSHIFT_API_SERVER \
    OPENSHIFT_SA_CONTEXT \
    OPENSHIFT_SA_SECRET \
    OPENSHIFT_SA_NAMESPACE \
    OPENSHIFT_SA_TOKEN_SERVICE || return 1

  local service_account_token raw_token current_context
  service_account_token=$(security find-generic-password -a "$USER" -s "$OPENSHIFT_SA_TOKEN_SERVICE" -w 2>/dev/null || true)

  if [[ -z "$service_account_token" ]]; then
    raw_token=$(kubectl get secret "$OPENSHIFT_SA_SECRET" -n "$OPENSHIFT_SA_NAMESPACE" -o jsonpath='{.data.token}' 2>/dev/null || true)
    if [[ -n "$raw_token" ]]; then
      service_account_token=$(printf '%s' "$raw_token" | base64 --decode 2>/dev/null || printf '%s' "$raw_token" | base64 -D 2>/dev/null)
    fi
  fi

  if [[ -z "$service_account_token" ]]; then
    print -u2 "Error: service-account token not found in Keychain or Kubernetes."
    print -u2 "Configure the OpenShift settings in .env and add the token to Keychain."
    return 1
  fi

  if oc login --token="$service_account_token" --server="$OPENSHIFT_API_SERVER"; then
    current_context=$(oc config current-context) || return 1

    if [[ "$current_context" != "$OPENSHIFT_SA_CONTEXT" ]]; then
      oc config delete-context "$OPENSHIFT_SA_CONTEXT" &>/dev/null || true
      oc config rename-context "$current_context" "$OPENSHIFT_SA_CONTEXT"
      print "Successfully logged in and renamed context to '$OPENSHIFT_SA_CONTEXT'."
    fi
  else
    print -u2 "OpenShift service-account login failed; context was not renamed."
    return 1
  fi
}