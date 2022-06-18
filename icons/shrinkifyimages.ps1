$files = Get-ChildItem "*.jpg"
foreach ($f in $files) {
    magick $f -strip -interlace Plane -quality 65 -resize "400x>" $f
    Write-Output "shrunk file: " $f
}