# Push project to GitHub
$token    = "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"
$repoName = "khanh-linh-proposal"
$folder   = "C:\Users\MSi\Documents\Claude\Projects\Trung Tam Khanh Linh"

# Use actual folder path with diacritics
$folder = Join-Path $env:USERPROFILE "Documents\Claude\Projects\Trung T`u00e2m Kh`u00e1nh Linh"
$folder = "C:\Users\MSi\Documents\Claude\Projects\Trung T$([char]0x00e2)m Kh$([char]0x00e1)nh Linh"

Set-Location "C:\Users\MSi\Documents\Claude\Projects"
Set-Location "Trung T$([char]0x00e2)m Kh$([char]0x00e1)nh Linh"

$headers = @{
    Authorization = "token $token"
    Accept        = "application/vnd.github.v3+json"
}

# Get GitHub username
Write-Host "Getting GitHub user..." -ForegroundColor Cyan
$me = Invoke-RestMethod -Uri "https://api.github.com/user" -Headers $headers
$username = $me.login
Write-Host "User: $username" -ForegroundColor Green

# Create repo
Write-Host "Creating repo..." -ForegroundColor Cyan
$body = "{`"name`":`"$repoName`",`"private`":true,`"description`":`"Proposal Marketing Khanh Linh`"}"
try {
    $r = Invoke-RestMethod -Uri "https://api.github.com/user/repos" -Method Post -Body $body -Headers $headers -ContentType "application/json"
    Write-Host "Repo created: $($r.html_url)" -ForegroundColor Green
} catch {
    Write-Host "Repo may already exist, continuing..." -ForegroundColor Yellow
}

# Git setup
Write-Host "Setting up git..." -ForegroundColor Cyan
git init
git config user.email "mhoang.mkt@gmail.com"
git config user.name "Hoang Vu"
git branch -M main

# .gitignore
"*.lock`n.DS_Store`nThumbs.db`npush-to-github.ps1" | Out-File -Encoding utf8 .gitignore

git add .
git commit -m "feat: Khanh Linh marketing proposal v1.0"

# Push
$remoteUrl = "https://${username}:${token}@github.com/${username}/${repoName}.git"
git remote remove origin 2>$null
git remote add origin $remoteUrl
git push -u origin main

Write-Host ""
Write-Host "DONE: https://github.com/$username/$repoName" -ForegroundColor Green
Write-Host "REMINDER: Delete this script and revoke your token at github.com/settings/tokens" -ForegroundColor Red
