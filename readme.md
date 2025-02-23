# Windows Config

Instalar programas con winget, desde la pagina oficial
`https://winstall.app`

## NVIM

Todos los archivos de configuracion de Lazyvim se encuentran en `Users\luisp\AppData\local\nvim`
Se debe crear un enlace simbolico de nvim

Requerimientos para instalar Lazyvim
Neovim
`winget install --id=Neovim.Neovim  -e`

Git
`winget install --id=Git.Git  -e`

1. Abrir el cmd en modo administrador
2. Ejecutar el siguiente comando:

```bash
mklink /d C:\Users\luisp\AppData\local\nvim D:\dots\nvim
```
