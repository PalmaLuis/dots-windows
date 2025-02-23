Write-Host @"

    __     __  _____      _                     __   
   / /    / / |  __ \    | |                    \ \  
  / /    / /  | |__) |_ _| |_ __ ___   _____  __ \ \ 
 < <    / /   |  ___/ _`  | | '_  ` _ \ / _ \ \/ /  > >
  \ \  / /    | |  | (_| | | | | | | |  __/>  <  / / 
   \_\/_/     |_|   \__,_|_|_| |_| |_|\___/_/\_\/_/  
                                                     
                                                    
"@ -ForegroundColor Cyan

#oh-my-posh --init --shell pwsh --config D:/dots/robbyrussell.json | Invoke-Expression # quita el comentario si quieres usar oh-my-posh
Invoke-Expression (&starship init powershell) -- #para usar starship
Import-Module -Name Terminal-Icons

# Saber donde se instalo un programa
function which {
  param ([string]$Command)
  Get-Command $Command | Select-Object -ExpandProperty Path
}

# Cambiar de ubicacion a D
function d {
  Set-Location D:\
}

function l {
  param(
    [Parameter(Position = 0)]
    [ArgumentCompleter({
        param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameters)
        Get-ChildItem -Path "D:\learn" -Directory | ForEach-Object { $_.Name }
      })]
    [string]$d
  )

  $RutaCompleta = "D:\learn"
  if ($d) {
    $RutaCompleta = Join-Path "D:\learn" $d
  }
  if (Test-Path $RutaCompleta) {
    Set-Location $RutaCompleta
  }
  else {
    Write-Host "La carpeta especificada no existe: $RutaCompleta" -ForegroundColor Red
  }
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
function gf {
  git flow $args
}


# PONER MUSICA RANDOM DE LA PLAYLIST DE LOFI
function pyt {
  param (
    [string]$s,
    [switch]$r
  )
  if ($s) {
    # Reemplaza espacios por '+' para formar la URL de búsqueda
    $query = $s -replace ' ', '+'
    $url = "https://www.youtube.com/results?search_query=$query"

    # Abre la URL en el navegador predeterminado
    Start-Process $url
     
  }
  elseif ($r) {
    $location = pwd
    Set-Location D:\projects\extraer_videos_playlist\
    .\venv\Scripts\Activate.ps1
    py .\main.py
    deactivate
    Set-Location $location
  }
  else {
    #Si no se pasan parametros preguntara que deas buscar en youtube
    $s = (Read-Host "Introduce el término a buscar en YouTube")
    if ($s) {
      $query = $s -replace ' ', '+'
      $url = "https://www.youtube.com/results?search_query=$query"
      Start-Process $url
    }
  }
}

function ani_day {
  $location = pwd
  Set-Location D:\projects\anilist
  .\venv\Scripts\Activate.ps1
  py .\main.py
  deactivate
  Set-Location $location
}

function anime {
  param(
    [string]$flv,
    [string]$va
  )
  if ($flv) {
    $query = $flv -replace ' ', '+'
    $url = "https://www3.animeflv.net/browse?q=$query"
    Start-Process $url
  }
  elseif ($va) {
    $query = $va -replace ' ', '+'
    $url = "https://ww3.animeonline.ninja/?s=$query"
    Start-Process $url
  }
  else {
    $flv = (Read-Host "Introduce el anime a buscar")
    if ($flv) {
      $query = $flv -replace ' ', '+'
      $url = "https://ww3.animeflv.net/browse?q=$query"
    }
  }
}

#ALIAS
Set-Alias g git
Set-Alias ls lsd

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
