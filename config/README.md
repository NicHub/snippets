# CONFIG

## Prevent a Mac laptop from turning on when opening its lid or connecting to power

- <https://support.apple.com/en-us/120622>

```bash
sudo nvram BootPreference=%00
```

## markdownlint

- DavidAnson.vscode-markdownlint
- <https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint>
- <https://github.com/DavidAnson/markdownlint/blob/v0.40.0/doc/md030.md>

les exceptions sont dans ~/.markdownlint.json

```bash
ln -s /Users/nico/Public/snippets/config/.markdownlint.json ~/.markdownlint.json
```
