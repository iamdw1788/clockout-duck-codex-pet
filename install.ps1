$ErrorActionPreference = "Stop"

$repo = "iamdw1788/clockout-duck-codex-pet"
$branch = "main"
$petId = "clockout-duck"
$petDir = Join-Path $env:USERPROFILE ".codex\pets\$petId"
$baseUrl = "https://raw.githubusercontent.com/$repo/$branch"

New-Item -ItemType Directory -Force -Path $petDir | Out-Null

Invoke-WebRequest -Uri "$baseUrl/pet.json" `
  -OutFile (Join-Path $petDir "pet.json")
Invoke-WebRequest -Uri "$baseUrl/spritesheet.webp" `
  -OutFile (Join-Path $petDir "spritesheet.webp")

Write-Host ""
Write-Host "Clockout Duck installed successfully!" -ForegroundColor Green
Write-Host "Open Codex > Settings > Pets, refresh the list, and select Clockout Duck."

