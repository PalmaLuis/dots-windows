ObsidianBacklinksObsidianBacklinksindows Config

Instalar programas con winget, desde la pagina oficial
`https://winstall.app`

## LAZYVIM

Todos los archivos de configuracion de Lazyvim se encuentran en `Users\luisp\AppData\local\nvim`
Se debe crear un enlace simbolico de nvim

Requerimientos para instalar Lazyvim

Neovim

```bash
winget install --id=Neovim.Neovim  -e
```

Git

```bash
winget install --id=Git.Git  -e
```

Lazygit

```bash
winget install --id=JesseDuffield.lazygit  -e
```

Instalar la NerdFont ubicada en `./fonts/DankMono Nerd Font/`

1. Abrir el cmd en modo administrador
2. Ejecutar el siguiente comando:

```bash
mklink /d C:\Users\luisp\AppData\local\nvim D:\dots\nvim
```

## MEJORAR TERMINAL

El archivo de configuracion de $PROFILE es `./powershell/Microsoft.PowerShell_profile.ps1`

Crear un enlace simbolico con el siguiente comando

```bash
mklink C:\Users\luisp\OneDrive\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 D:\dots\powershell\Microsoft.PowerShell_profile.ps1
```

Zoxide
Mejora la navegacion a directorios usando z y el nombre del directorio

```bash
winget install zoxide
```

Starship

```bash
winget install --id=Starship.Starship  -e
```

FZF

```bash
winget install fzf
```

FD
se usa para buscar archivos es mas rapido

```bash
winget install sharkdp.fd
```

LSD
Para listar archivos de mejor manera

```bash
winget install --id lsd-rs.lsd
```

BAT
Similar al comando CAT de linux

```bash
winget install sharkdp.bat
```

Clink

```bash
winget install clink
```

RipGrep
Buscar texto dentro de archivos

```bash
winget install BurntSushi.ripgrep.MSVC
```

## Vscode

El archivo de configuracion esta en `dots/vscode`

crear el link simbolico de las settings

```bash
mklink C:\Users\luisp\AppData\Roaming\Code\User\settings.json D:\dots\vscode\settings.json
```
