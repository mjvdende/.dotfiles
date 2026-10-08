# .files
Set up my computers to their desired states.

## Set up

Clone this repo to `$HOME/.dotfiles`, then create the local contract configuration:

```sh
cd ~/.dotfiles
cp .env.example .env
```

Set `CONTRACT` and the contract-specific account values in `.env`, then run `./install.sh`.
The `.env` file is ignored by Git; do not commit local identifiers or credentials.

## ROSA / OpenShift

The `rosa-login` helpers are loaded from `system/openshift.zsh`. To use them, set the OpenShift values in your ignored `.env`:

- `OPENSHIFT_API_SERVER`: cluster API URL.
- `OPENSHIFT_LOGIN_CONTEXT`: context name used by `rosa-login` after web login.
- `OPENSHIFT_SA_CONTEXT`: context name used by `rosa-login-sa`.
- `OPENSHIFT_SA_SECRET` and `OPENSHIFT_SA_NAMESPACE`: Kubernetes Secret and namespace used as the service-account token fallback.
- `OPENSHIFT_SA_TOKEN_SERVICE`: Keychain service name for the token; defaults to `SA_TOKEN` in `.env.example`.

Run `rosa-login` for browser-based login. Run `rosa-login-sa` to log in with a service-account token. It first checks the `login` Keychain for a Generic Password with service `OPENSHIFT_SA_TOKEN_SERVICE` and account `$USER`, then falls back to the configured Kubernetes Secret. To add the Keychain item without putting the token in shell history, use the interactive prompt:

```sh
security add-generic-password -a "$USER" -s "$OPENSHIFT_SA_TOKEN_SERVICE" -w
```

Keep the token in Keychain; do not put its value in `.env` or type it into a command. The helper retrieves it and passes it to `oc login` at runtime.

## Per-Contract Git Identity

The tracked Git config includes `~/.gitconfig.local`, which the installer creates if it does not exist. Keep contract-specific Git identities in this local file and in separate, untracked config files.

For each contract, replace `<contract>` below with the lowercase name of its project directory:

1. Create `~/projects/<contract>/.gitconfig` with the identity for that contract:

   ```gitconfig
   [user]
       email = your-contract-email@example.com
   ```
2. Add a conditional include to `~/.gitconfig.local`:

   ```gitconfig
   [includeIf "gitdir:~/projects/<contract>/"]
       path = ~/projects/<contract>/.gitconfig
   ```
3. From a Git repository under `~/projects/<contract>/`, verify the identity source:

   ```sh
   git config --show-origin --get user.email
   ```

The conditional applies to Git repositories under that directory, not merely when the shell is in the parent directory. Do not put contract-specific email addresses in the tracked `git/.gitconfig`.

## Keychain Secrets

`system/secrets.zsh` is ignored by Git and contains local lookups only. The installer creates it when absent and sets its permissions to `600`.

To add a secret:

1. Add a `Generic Password` item to the `login` keychain using Keychain Access, or run this command and enter the secret at the prompt:
   ```sh
   security add-generic-password -a "$USER" -s "MY_API_TOKEN" -w
   ```
   Leave `-w` as the last option so `security` prompts instead of putting the secret in shell history or the process arguments. Add `-U` before `-w` if you need to update an existing item. For an existing service, match the account in its current lookup.
2. Set the service name to the identifier used by the shell lookup and the account to the value passed to `security` (for a new lookup, `"$USER"` is the macOS account name).
3. Edit the ignored `system/secrets.zsh` and add a lookup, replacing `MY_API_TOKEN` with your variable and service name:

   ```zsh
   export MY_API_TOKEN="$(security find-generic-password -a "$USER" -s "MY_API_TOKEN" -w)"
   ```
4. Test the lookup without displaying the value:

   ```zsh
   source "$HOME/.dotfiles/system/secrets.zsh"
   [[ -n "$MY_API_TOKEN" ]] && echo "Keychain lookup succeeded"
   ```

Avoid putting secret values in shell commands, logs, or shared terminals. The lookup returns the value to the shell; don’t print it for verification.

## Keeping Brewfile Current

After installing or removing Homebrew packages, refresh the manifest with:

```sh
brew bundle dump --force --file=Brewfile
```
