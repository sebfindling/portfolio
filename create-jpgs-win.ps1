$dir = "C:\Users\Seb\OneDrive\Desarrollo\Emprendimiento\Seb\captures-original"
$total = (Get-ChildItem -Path $dir -File).Count

# Función para procesar imágenes
function Process-Images {
    param (
        [string]$size,
        [string]$outputDir
    )
    
    Write-Host "Creating $total $outputDir.."
    Get-ChildItem -Path $dir -File | ForEach-Object {
        $outputFile = Join-Path -Path $outputDir -ChildPath ($_.BaseName + ".jpg")
        & magick convert $_.FullName -resize $size -quality 90 -interlace plane $outputFile
    }
}

# Crear directorio de salida si no existe
New-Item -ItemType Directory -Force -Path "public\captures"
New-Item -ItemType Directory -Force -Path "public\thumbs"

# Procesar capturas
Process-Images -size "1500x1500>" -outputDir "public\captures"

# Procesar miniaturas
Process-Images -size "300x300>" -outputDir "public\thumbs"