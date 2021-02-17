<img src="https://www.42.fr/wp-content/themes/42/images/42_logo_black.svg" width="150" />

# 42helpers

A suite of helpers that will aid you with everyday tasks.
## [NEW] **42dark**

Set your macOS theme to dark automatically!

## Installation

Start by running this command in a terminal.

```zsh
curl -fsSL https://raw.githubusercontent.com/UmbertoSavoia/42helpers/main/tools/install.sh | zsh
```

Then reload your session (`source ~/.zshrc`) and run `42help` to get started.

## Use

Have a look at the sections below for the availible helpers and commands.

<details>
	<summary>
		<b>42help</b>
	</summary>

Main command:

- lists the availible helpers
- lets you manually upgrade and uninstall the suite

</details>

<details>
	<summary>
		<b>42dark</b>
	</summary>

### Tip

You can add it to your *Login Items* in the *Users & Groups* preferences section to run it every time you log in.

</details>

<details>
	<summary>
		<b>42docker</b>
	</summary>

Use this helper to manage your Docker installation.

### Use

`42docker help` for a list of commands.

|command  |description                  |
|---------|-----------------------------|
`42docker`|Moves Container folder
`clean`   |Removes Container folder
`kill`    |Kills Docker process forcibly

</details>

<details>
	<summary>
		<b>42brew</b>
	</summary>

Use this helper to manage your Brew installation.

You can:

- install Homebre
- uninstall Homebrew

### Use

|command|description       |
|-------|------------------|
`42brew`|Installs Homebrew
`clean` |Uninstalls Homerew

</details>

## Contributors

- @UmbertoSavoia ([usavoia](https://profile.intra.42.fr/users/usavoia))
- @leeoocca ([lrocca](https://profile.intra.42.fr/users/lrocca))
- Mattia ([mcossu](https://profile.intra.42.fr/users/mcossu))

## License

MIT
