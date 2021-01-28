# 42helpers

## Dock aka Docker Helper

Use this helper to manage your Docker installation.

You can:

- move the Containers folder so that it doesn't take up space in your Home
- clean Docker's Containers folder
- kill Docker forcibly

### Install

Run this command from your terminal:

```
curl -fsSL https://raw.githubusercontent.com/UmbertoSavoia/42helpers/main/src/dock > dock && chmod 755 dock
```

### Use

`./dock help` for a list of commands.

|command|description|
|---|---|
`dock`|Moves Container folder
`clean`|Removes all traces of Docker
`kill`|Kills Docker process forcibly

## 42brew

Use this helper to manage your Brew installation.

You can:

- install Brew
- remove your Brew installation

### Install

Run this command from your terminal:

```
curl -fsSL https://raw.githubusercontent.com/UmbertoSavoia/42helpers/main/src/42brew > 42brew && chmod 755 42brew
```

### Use

|command|description|
|---|---|
`42brew`|Installs Brew
`clean`|Removes your Brew installation
