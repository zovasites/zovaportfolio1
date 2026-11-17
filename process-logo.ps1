Add-Type -AssemblyName System.Drawing

$inputPath = Join-Path $PSScriptRoot "images\zova-logo.jpg"
$inputPath = [System.IO.Path]::GetFullPath($inputPath)

if (-not (Test-Path $inputPath)) {
    Write-Error "File not found: $inputPath"
    exit 1
}

$origBmp = [System.Drawing.Bitmap]::FromFile($inputPath)
$width = $origBmp.Width
$height = $origBmp.Height

Write-Host "Image size: $width x $height"

# 1. Create transparent PNG
$transBmp = New-Object System.Drawing.Bitmap($width, $height, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)
# 2. Dark-theme optimized version
$darkBmp = New-Object System.Drawing.Bitmap($width, $height, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)

for ($y = 0; $y -lt $height; $y++) {
    for ($x = 0; $x -lt $width; $x++) {
        $p = $origBmp.GetPixel($x, $y)
        
        # Check if pixel is white / light gray background
        if ($p.R -gt 240 -and $p.G -gt 240 -and $p.B -gt 240) {
            $transBmp.SetPixel($x, $y, [System.Drawing.Color]::FromArgb(0, 0, 0, 0))
            $darkBmp.SetPixel($x, $y, [System.Drawing.Color]::FromArgb(0, 0, 0, 0))
        } else {
            $minVal = [Math]::Min($p.R, [Math]::Min($p.G, $p.B))
            $alpha = 255
            if ($minVal -gt 210) {
                $alpha = [int]((255 - $minVal) * (255 / 45.0))
                if ($alpha -gt 255) { $alpha = 255 }
                if ($alpha -lt 0) { $alpha = 0 }
            }

            $transBmp.SetPixel($x, $y, [System.Drawing.Color]::FromArgb($alpha, $p.R, $p.G, $p.B))

            # If pixel is dark navy/black (text or S part), brighten it for dark background visibility
            if ($p.R -lt 70 -and $p.G -lt 80 -and $p.B -lt 120) {
                $rNew = [Math]::Min(255, [int]($p.R * 0.3 + 215))
                $gNew = [Math]::Min(255, [int]($p.G * 0.3 + 235))
                $bNew = [Math]::Min(255, [int]($p.B * 0.3 + 255))
                $darkBmp.SetPixel($x, $y, [System.Drawing.Color]::FromArgb($alpha, $rNew, $gNew, $bNew))
            } else {
                $darkBmp.SetPixel($x, $y, [System.Drawing.Color]::FromArgb($alpha, $p.R, $p.G, $p.B))
            }
        }
    }
}

$outTrans = Join-Path $PSScriptRoot "images\zova-logo-transparent.png"
$outDark = Join-Path $PSScriptRoot "images\zova-logo-dark.png"

$transBmp.Save($outTrans, [System.Drawing.Imaging.ImageFormat]::Png)
$darkBmp.Save($outDark, [System.Drawing.Imaging.ImageFormat]::Png)

Write-Host "Saved: $outTrans"
Write-Host "Saved: $outDark"

# 3. Create icon crop (emblem)
$cropX = [int]($width * 0.32)
$cropY = [int]($height * 0.26)
$cropW = [int]($width * 0.38)
$cropH = [int]($height * 0.35)

$cropRect = New-Object System.Drawing.Rectangle($cropX, $cropY, $cropW, $cropH)
$iconBmp = $darkBmp.Clone($cropRect, $darkBmp.PixelFormat)
$outIcon = Join-Path $PSScriptRoot "images\zova-icon.png"
$iconBmp.Save($outIcon, [System.Drawing.Imaging.ImageFormat]::Png)
Write-Host "Saved: $outIcon"

$origBmp.Dispose()
$transBmp.Dispose()
$darkBmp.Dispose()
$iconBmp.Dispose()
