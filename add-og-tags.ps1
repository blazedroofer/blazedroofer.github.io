# ============================================================
# Recovery Roofer - add Open Graph / social-card tags
# Run from the repo root:  .\add-og-tags.ps1
# Safe: skips any article that already has an og:image tag.
# ============================================================

$base = "https://www.recoveryroofer.ca"

# slug = @{ t = og:title ; d = og:description }
$articles = [ordered]@{
  "cia-overview"                    = @{ t="Breaking Down the Compassionate Intervention Act: An Overview | Recovery Roofer"; d="A section-by-section read of Ontario's involuntary-treatment law - how it's supposed to work on paper, and where it's likely to break in real life." }
  "cia-part2-harm-threshold"        = @{ t="The Harm Threshold: Who Gets Pulled In | Recovery Roofer"; d="Part 2 of breaking down Ontario's Compassionate Intervention Act - the harm threshold, and how much discretion it leaves." }
  "cia-part3-applicant-rules"       = @{ t="Who Can Pull the Trigger: Section 17 | Recovery Roofer"; d="Part 3 - who can actually apply under Section 17 of Ontario's Compassionate Intervention Act, in plain language." }
  "cia-part4-inside-72-hours"       = @{ t="Inside the 72-Hour Window | Recovery Roofer"; d="Part 4 - apprehension to hearing under Ontario's Compassionate Intervention Act, step by step." }
  "garden-path-consent"             = @{ t="When Poly-Dope Withdrawal Breaks Informed Consent | Recovery Roofer"; d="What happens when safer supply meets a drug it wasn't built for - and how poly-substance withdrawal breaks informed consent." }
  "housing-first-ottawa"            = @{ t="Housing First in Ottawa: Why Just Giving Keys Isn't Enough | Recovery Roofer"; d="Why keys alone don't fix it - and what a real continuum of care looks like in Ottawa." }
  "life-with-a-record-part1"        = @{ t="Life With a Record in Canada | Recovery Roofer"; d="How a criminal record locks the cycle in, and what perspective actually means after prison." }
  "ontario-3point8-billion-who-profits" = @{ t="Ontario's `$3.8B Problem: Who Profits When You Don't Recover? | Recovery Roofer"; d="Where the money actually went - and who gets paid when you stay sick." }
  "parole-rebellion-protocol"       = @{ t="Everyone Told Me Parole Was a Setup. They Were Right. | Recovery Roofer"; d="What parole in Canada actually looks like from the inside - and how much support most people leave on the table." }
  "starting-point-problem"          = @{ t="The Starting Point Problem | Recovery Roofer"; d="Fifteen years of detox across six Ontario cities - what changed, what didn't, and what happens in the gaps the system doesn't see." }
  "the-lifelong-contract"           = @{ t="The Lifelong Contract | Recovery Roofer"; d="The same financial logic that created this epidemic is now running the treatment." }
  "the-stories-we-tell-ourselves"   = @{ t="The Stories We Tell Ourselves | Recovery Roofer"; d="Getting clean doesn't fix the thinking. I relapsed sober, with my best judgment. The real prison was the story I told myself about who I was." }
  "toxic-drugs"                     = @{ t="The Drugs Got More Toxic, the Policy Got Softer | Recovery Roofer"; d="A frontline account of how Ottawa's opioid crisis became a poly-substance system current frameworks aren't built for." }
  "cold-turkey-is-dead"             = @{ t="Cold Turkey Is Dead | Recovery Roofer"; d="The drug supply changed. The old way of quitting won't survive it - and pretending otherwise gets people killed." }
  "decades-detox"                   = @{ t="Two Decades of Detox: What I Actually Learned | Recovery Roofer"; d="After 20 years of quitting, detoxes, and relapses through changing drug supplies, here's what I actually learned about detox in Canada." }
  "motivation-window"               = @{ t="Internal Motivation: The Fuel That Keeps You Rebuilding | Recovery Roofer"; d="The fuel that keeps you rebuilding when everything else is gone - and why it has to come from inside, not from the system." }
  "owen-sound-systems"              = @{ t="When Small Systems Work: What Owen Sound Taught Me | Recovery Roofer"; d="Why smaller systems can be easier to navigate than big-city ones, and what a real continuum of care actually looks like." }
  "rewind"                          = @{ t="Rewind: A Reverse Timeline | Recovery Roofer"; d="The road in, walked backwards - from where I am now to where it started. A reverse timeline of the system and the self." }
}

$done = 0; $skipped = 0; $missing = 0

foreach ($slug in $articles.Keys) {
  $path = "articles\$slug.html"
  if (-not (Test-Path $path)) { Write-Host "MISSING FILE: $path" -ForegroundColor Red; $missing++; continue }

  $html = Get-Content $path -Raw
  if ($html -match 'og:image') { Write-Host "skip (already tagged): $slug" -ForegroundColor DarkGray; $skipped++; continue }

  $t   = $articles[$slug].t
  $d   = $articles[$slug].d
  $url = "$base/articles/$slug.html"
  $img = "$base/assets/img/$slug-og.jpg"

  $block = @"
    <!-- Open Graph / social card -->
    <meta property="og:type" content="article">
    <meta property="og:title" content="$t">
    <meta property="og:description" content="$d">
    <meta property="og:url" content="$url">
    <meta property="og:image" content="$img">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="630">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="$t">
    <meta name="twitter:description" content="$d">
    <meta name="twitter:image" content="$img">
</head>
"@

  $new = $html -replace '</head>', $block
  Set-Content -Path $path -Value $new -Encoding UTF8 -NoNewline
  Write-Host "tagged: $slug" -ForegroundColor Green
  $done++
}

Write-Host "`n--- done: $done tagged, $skipped skipped, $missing missing ---" -ForegroundColor Cyan
