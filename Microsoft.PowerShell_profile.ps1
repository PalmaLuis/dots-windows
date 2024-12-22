oh-my-posh --init --shell pwsh --config D:/dots/robbyrussell.json | Invoke-Expression
Import-Module -Name Terminal-Icons

# Cambiar de ubicacion a D
function d {
  Set-Location D:\
}

# Cambiar de direccion a la carpeta learn
function l {
  Set-Location D:\learn
}

#   Cambiar de direccion a la carpeta projectss
function p {
  Set-Location D:\projects
}

# CAMBIAR DE DIRECCION A LA CARPETA DOTS
function dots {
    Set-Location  D:\dots
  }

function obsi {
    Set-Location D:\obsidian\notes
}


# crear un link simpolico como en linux
function link_simb {
  param (
    [string]$LinkPath, # Ruta donde se creará el enlace
    [string]$TargetPath  # Ruta del archivo o carpeta de destino
  )
  New-Item -ItemType SymbolicLink -Path $LinkPath -Target $TargetPath -Force
  Write-Host "Enlace simbólico creado: $LinkPath -> $TargetPath" -ForegroundColor Green
}

# Acortador del comando git flow
function gf{
    git flow $args
}

# BUSCAR CUALQUIER COSA EN YOUTUBE
function syt {
    param (
        [string]$s = $(Read-Host "Introduce el término a buscar en YouTube")
    )
    # Reemplaza espacios por '+' para formar la URL de búsqueda
    $query = $s-replace ' ', '+'
    $url = "https://www.youtube.com/results?search_query=$query"

    # Abre la URL en el navegador predeterminado
    Start-Process $url
    Write-Host "Buscando en YouTube: $SearchTerm" -ForegroundColor Green
}


# PONER MUSICA LOFI
function pyt{
    Start-Process "https://acortar.link/VRrhEW"
  }
  
#ALIAS
Set-Alias g git
