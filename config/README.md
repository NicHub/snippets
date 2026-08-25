# CONFIG

## Prevent a Mac laptop from turning on when opening its lid or connecting to power

-   <https://support.apple.com/en-us/120622>

```bash
sudo nvram BootPreference=%00
```

## markdownlint

-   DavidAnson.vscode-markdownlint
-   <https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint>
-   <https://github.com/DavidAnson/markdownlint/blob/v0.40.0/doc/md030.md>

les exceptions sont dans $HOME/.markdownlint.json

"$HOME/Library/Application Support/Code/User/settings.json"

```bash
ln -s $HOME/Public/snippets/config/.markdownlint.json $HOME/.markdownlint.json
```

## doc de markdownlint

<https://github.com/DavidAnson/markdownlint/blob/v0.41.1/doc/md013.md>

## cli usage

```shell

MDNAME="$HOME/kdnicomac/kdnicomac/sites/cnl-naturopathie/site-web-v4/AGENTS.md"
MDNAME="$HOME/.codex/AGENTS.md"
MDNAME="$HOME/kdnicomac/kdnicomac/sites/cnl-naturopathie/site-web-v4/content/faq/index.md"
code $MDNAME
prettier --write "$MDNAME"
markdownlint-cli2 --config "$HOME/.markdownlint.json" --fix "$MDNAME"

```
