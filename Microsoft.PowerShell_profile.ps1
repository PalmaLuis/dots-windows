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


# PONER MUSICA RANDOM DE LA PLAYLIST DE LOFI
function pyt{
 param (
        [string]$s = $(Read-Host "Introduce el término a buscar en YouTube"),
        [switch]$r
    )
    if($s){
      # Reemplaza espacios por '+' para formar la URL de búsqueda
      $query = $s -replace ' ', '+'
      $url = "https://www.youtube.com/results?search_query=$query"

      # Abre la URL en el navegador predeterminado
      Start-Process $url
     
    }elseif($r){
    $location = pwd
      Set-Location D:\projects\extraer_videos_playlist\
      .\venv\Scripts\Activate.ps1
      py .\main.py
      deactivate
      Set-Location $location
    }
}

#ALIAS
Set-Alias g git
