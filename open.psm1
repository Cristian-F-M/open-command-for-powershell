function open {
  param(
    [string]$path
  )

  $path = ($path -ne '') ? $path : "."


  Write-Host "Abriendo $path"

  if (Test-Path $path) {
    return Start-Process explorer $path
  } 

  Write-Error "No se encontró la ruta $path"

}