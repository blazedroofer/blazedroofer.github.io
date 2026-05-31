# ============================================================
# Recovery Roofer - add canonical tags to articles
# Run from repo root:  .\add-canonical.ps1
# Safe: skips any article that already has a canonical link.
# ============================================================

$base = "https://www.recoveryroofer.ca"

$slugs = @(
  "a-beautiful-life","cia-overview","cia-part2-harm-threshold","cia-part3-applicant-rules",
  "cia-part4-inside-72-hours","cold-turkey-is-dead","decades-detox","garden-path-consent",
  "housing-first-ottawa","its-not-personal-its-designed","life-with-a-record-part1","motivation-window",
  "ontario-3point8-billion-who-profits","owen-sound-systems","parole-rebellion-protocol","rewind",
  "rsr-001-the-strong-season","starting-point-problem","the-lifelong-contract","the-maintenance-contract",
  "the-same-money-the-same-question","the-stories-we-tell-ourselves","the-truck-i-almost-turned-around",
  "tier-the-detoxes","toxic-drugs"
)

$done = 0; $skipped = 0; $missing = 0

foreach ($slug in $slugs) {
  $path = "articles\$slug.html"
  if (-not (Test-Path $path)) { Write-Host "MISSING FILE: $path" -ForegroundColor Red; $missing++; continue }

  $html = Get-Content $path -Raw
  if ($html -match 'rel="canonical"') { Write-Host "skip (has canonical): $slug" -ForegroundColor DarkGray; $skipped++; continue }

  $url = "$base/articles/$slug.html"
  $tag = "    <link rel=""canonical"" href=""$url"">`r`n</head>"
  $new = $html -replace '</head>', $tag
  Set-Content -Path $path -Value $new -Encoding UTF8 -NoNewline
  Write-Host "canonical added: $slug" -ForegroundColor Green
  $done++
}

Write-Host "`n--- done: $done added, $skipped skipped, $missing missing ---" -ForegroundColor Cyan
