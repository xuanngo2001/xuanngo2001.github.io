[CmdletBinding()]
param (
    [Parameter(Mandatory=$true)]     [string]    $Title
)

$today = Get-Date -Format "yyyy-MM-dd" # Output: 2020-05-17

$title_formattted = $Title.ToLower() -replace " ","-"
$front_matter = @"
---
layout: post
title:  "${Title}"
---

# ${Title}
"@

$out_md_file = "${today}-${title_formattted}.md"

$front_matter | Out-File $out_md_file
