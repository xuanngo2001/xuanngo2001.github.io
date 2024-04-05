[CmdletBinding()]
param (
    [Parameter(Mandatory=$true)]    [string]    $FilePath
)

#$today = Get-Date -Format "yyyy-MM-dd" # Output: 2020-05-17

$file_path_formatted = $FilePath.ToLower() -replace " ","-"

$dir_path = [System.IO.Path]::GetDirectoryName($file_path_formatted)
$file_name_no_ext = [System.IO.Path]::GetFileNameWithoutExtension($file_path_formatted)


if (!$file_name_no_ext) {
    throw "${FilePath}: No filename!"
}

if (Test-Path $file_path_formatted -PathType Leaf) {
    throw "${FilePath}: File already exist!"
}

# Create directory
New-Item -ItemType Directory -Force -Path $dir_path  | Out-Null

# Create md file.
$title = [System.IO.Path]::GetFileNameWithoutExtension($FilePath)
$title = ( Get-Culture ).TextInfo.ToTitleCase( $title.ToLower() )
$front_matter = @"
---
layout: topic
title:  "${title}"
---

# ${title}
"@

$front_matter | Out-File $file_path_formatted -NoClobber
Write-Host "Created ${file_path_formatted}."