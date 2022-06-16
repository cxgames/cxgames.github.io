$files = Get-ChildItem "*.jpg"
foreach ($f in $files) {
    magick $f -strip -interlace Plane -quality 60% -resize "400x>" $f
}