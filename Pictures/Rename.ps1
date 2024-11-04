$format = "yyyy.MM.dd - HH:mm"
foreach ($file in (Get-ChildItem | ? { !$_.PSIsContainer -and $_.Extension -ne '.ps1' })) {
    $newName = $file.CreationTime.ToString($format) + $file.Extension

    $counter = 1
    while (Test-Path -Path (Join-Path $folderPath $newName)) {
        $newName = $file.CreationTime.ToString($format) + " ($counter)" + $file.Extension
        $counter++
    }

    Rename-Item -Path $file.FullName -NewName $newName -Force
}