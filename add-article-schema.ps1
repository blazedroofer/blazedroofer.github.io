# ============================================================
# Recovery Roofer - add Article structured data (JSON-LD)
# Run from repo root:  .\add-article-schema.ps1
# Safe: skips any article that already has Article schema.
# Dates are month-level best guesses - edit datePublished in
# any article if you know the real date.
# ============================================================

$blocks = @{}

$blocks['a-beautiful-life'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "A Beautiful Life",
  "description": "Sixteen years in Ontario's system. The drug changed. The response didn't.",
  "image": "https://www.recoveryroofer.ca/assets/img/a-beautiful-life-og.jpg",
  "datePublished": "2026-05-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/a-beautiful-life.html"
  }
}
</script>
'@

$blocks['cia-overview'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Breaking Down the Compassionate Intervention Act: An Overview",
  "description": "A section-by-section read of Ontario's involuntary-treatment law - how it's supposed to work on paper, and where it's likely to break in real life.",
  "image": "https://www.recoveryroofer.ca/assets/img/cia-overview-og.jpg",
  "datePublished": "2026-04-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/cia-overview.html"
  }
}
</script>
'@

$blocks['cia-part2-harm-threshold'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "The Harm Threshold: Who Gets Pulled In",
  "description": "Part 2 of breaking down Ontario's Compassionate Intervention Act - the harm threshold, and how much discretion it leaves.",
  "image": "https://www.recoveryroofer.ca/assets/img/cia-part2-harm-threshold-og.jpg",
  "datePublished": "2026-04-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/cia-part2-harm-threshold.html"
  }
}
</script>
'@

$blocks['cia-part3-applicant-rules'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Who Can Pull the Trigger: Section 17",
  "description": "Part 3 - who can actually apply under Section 17 of Ontario's Compassionate Intervention Act, in plain language.",
  "image": "https://www.recoveryroofer.ca/assets/img/cia-part3-applicant-rules-og.jpg",
  "datePublished": "2026-04-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/cia-part3-applicant-rules.html"
  }
}
</script>
'@

$blocks['cia-part4-inside-72-hours'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Inside the 72-Hour Window: What Actually Happens Once the Door Closes",
  "description": "What the Act authorizes between apprehension and the hearing - and why the safeguards are built for a person who isn't there.",
  "image": "https://www.recoveryroofer.ca/assets/img/cia-part4-inside-72-hours-og.jpg",
  "datePublished": "2026-04-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/cia-part4-inside-72-hours.html"
  }
}
</script>
'@

$blocks['cold-turkey-is-dead'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Cold Turkey Is Dead",
  "description": "The drug supply changed. The old way of quitting won't survive it - and pretending otherwise gets people killed.",
  "image": "https://www.recoveryroofer.ca/assets/img/cold-turkey-is-dead-og.jpg",
  "datePublished": "2026-04-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/cold-turkey-is-dead.html"
  }
}
</script>
'@

$blocks['decades-detox'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Two Decades of Detox: What I Actually Learned",
  "description": "After 20 years of quitting, detoxes, and relapses through changing drug supplies, here's what I actually learned about detox in Canada.",
  "image": "https://www.recoveryroofer.ca/assets/img/decades-detox-og.jpg",
  "datePublished": "2026-04-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/decades-detox.html"
  }
}
</script>
'@

$blocks['garden-path-consent'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "When Poly-Dope Withdrawal Breaks Informed Consent",
  "description": "What happens when safer supply meets a drug it wasn't built for - and how poly-substance withdrawal breaks informed consent.",
  "image": "https://www.recoveryroofer.ca/assets/img/garden-path-consent-og.jpg",
  "datePublished": "2026-04-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/garden-path-consent.html"
  }
}
</script>
'@

$blocks['housing-first-ottawa'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Housing First in Ottawa: Why Just Giving Keys Isn't Enough",
  "description": "Why keys alone don't fix it - and what a real continuum of care looks like in Ottawa.",
  "image": "https://www.recoveryroofer.ca/assets/img/housing-first-ottawa-og.jpg",
  "datePublished": "2026-04-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/housing-first-ottawa.html"
  }
}
</script>
'@

$blocks['its-not-personal-its-designed'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "It's Not Personal, It's Designed",
  "description": "On methadone, shelters, ID, and what happens when the systems don't line up.",
  "image": "https://www.recoveryroofer.ca/assets/img/its-not-personal-its-designed-og.jpg",
  "datePublished": "2026-05-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/its-not-personal-its-designed.html"
  }
}
</script>
'@

$blocks['life-with-a-record-part1'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Life With a Record in Canada",
  "description": "How a criminal record locks the cycle in, and what perspective actually means after prison.",
  "image": "https://www.recoveryroofer.ca/assets/img/life-with-a-record-part1-og.jpg",
  "datePublished": "2026-04-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/life-with-a-record-part1.html"
  }
}
</script>
'@

$blocks['motivation-window'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Internal Motivation: The Fuel That Keeps You Rebuilding",
  "description": "The fuel that keeps you rebuilding when everything else is gone - and why it has to come from inside, not from the system.",
  "image": "https://www.recoveryroofer.ca/assets/img/motivation-window-og.jpg",
  "datePublished": "2026-04-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/motivation-window.html"
  }
}
</script>
'@

$blocks['ontario-3point8-billion-who-profits'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Ontario's $3.8B Problem: Who Profits When You Don't Recover?",
  "description": "Where the money actually went - and who gets paid when you stay sick.",
  "image": "https://www.recoveryroofer.ca/assets/img/ontario-3point8-billion-who-profits-og.jpg",
  "datePublished": "2026-04-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/ontario-3point8-billion-who-profits.html"
  }
}
</script>
'@

$blocks['owen-sound-systems'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "When Small Systems Work: What Owen Sound Taught Me",
  "description": "Why smaller systems can be easier to navigate than big-city ones, and what a real continuum of care actually looks like.",
  "image": "https://www.recoveryroofer.ca/assets/img/owen-sound-systems-og.jpg",
  "datePublished": "2026-04-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/owen-sound-systems.html"
  }
}
</script>
'@

$blocks['parole-rebellion-protocol'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Everyone Told Me Parole Was a Setup. They Were Right.",
  "description": "What parole in Canada actually looks like from the inside - and how much support most people leave on the table.",
  "image": "https://www.recoveryroofer.ca/assets/img/parole-rebellion-protocol-og.jpg",
  "datePublished": "2026-04-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/parole-rebellion-protocol.html"
  }
}
</script>
'@

$blocks['rewind'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Rewind: A Reverse Timeline",
  "description": "The road in, walked backwards - from where I am now to where it started. A reverse timeline of the system and the self.",
  "image": "https://www.recoveryroofer.ca/assets/img/rewind-og.jpg",
  "datePublished": "2026-04-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/rewind.html"
  }
}
</script>
'@

$blocks['rsr-001-the-strong-season'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "The Strong Season",
  "description": "A strong week, a harder season on the roof, and the first place I've ever designed and bought everything for.",
  "image": "https://www.recoveryroofer.ca/assets/img/rsr-001-the-strong-season-og.jpg",
  "datePublished": "2026-05-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/rsr-001-the-strong-season.html"
  }
}
</script>
'@

$blocks['starting-point-problem'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "The Starting Point Problem",
  "description": "Fifteen years of detox across six Ontario cities - what changed, what didn't, and what happens in the gaps the system doesn't see.",
  "image": "https://www.recoveryroofer.ca/assets/img/starting-point-problem-og.jpg",
  "datePublished": "2026-04-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/starting-point-problem.html"
  }
}
</script>
'@

$blocks['the-lifelong-contract'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "The Lifelong Contract",
  "description": "The same financial logic that created this epidemic is now running the treatment.",
  "image": "https://www.recoveryroofer.ca/assets/img/the-lifelong-contract-og.jpg",
  "datePublished": "2026-04-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/the-lifelong-contract.html"
  }
}
</script>
'@

$blocks['the-maintenance-contract'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "The Maintenance Contract: What Retatrutide and Methadone Have in Common",
  "description": "Retatrutide works. Methadone works. Both come with a contract most people don't read until they try to leave.",
  "image": "https://www.recoveryroofer.ca/assets/img/the-maintenance-contract-og.jpg",
  "datePublished": "2026-05-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/the-maintenance-contract.html"
  }
}
</script>
'@

$blocks['the-same-money-the-same-question'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "The Same Money, The Same Question",
  "description": "I would have qualified for the CIA. I support the tool. I also remember what privatization did the last time.",
  "image": "https://www.recoveryroofer.ca/assets/img/the-same-money-the-same-question-og.jpg",
  "datePublished": "2026-05-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/the-same-money-the-same-question.html"
  }
}
</script>
'@

$blocks['the-stories-we-tell-ourselves'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "The Stories We Tell Ourselves",
  "description": "Getting clean doesn't fix the thinking. I relapsed sober, with my best judgment. The real prison was the story I told myself.",
  "image": "https://www.recoveryroofer.ca/assets/img/the-stories-we-tell-ourselves-og.jpg",
  "datePublished": "2026-04-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/the-stories-we-tell-ourselves.html"
  }
}
</script>
'@

$blocks['the-truck-i-almost-turned-around'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "The Truck I Almost Turned Around",
  "description": "On routine, structure, and how it came to be in my life - from a red light in Kanata to having something to lose.",
  "image": "https://www.recoveryroofer.ca/assets/img/the-truck-i-almost-turned-around-og.jpg",
  "datePublished": "2026-05-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/the-truck-i-almost-turned-around.html"
  }
}
</script>
'@

$blocks['tier-the-detoxes'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Tier the Detoxes",
  "description": "The drug supply changed. The system didn't. A case for tiering Ontario's detox into three levels.",
  "image": "https://www.recoveryroofer.ca/assets/img/tier-the-detoxes-og.jpg",
  "datePublished": "2026-05-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/tier-the-detoxes.html"
  }
}
</script>
'@

$blocks['toxic-drugs'] = @'
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "The Drugs Got More Toxic, the Policy Got Softer",
  "description": "A frontline account of how Ottawa's opioid crisis became a poly-substance system current frameworks aren't built for.",
  "image": "https://www.recoveryroofer.ca/assets/img/toxic-drugs-og.jpg",
  "datePublished": "2026-04-01",
  "dateModified": "2026-05-31",
  "author": {
    "@type": "Person",
    "@id": "https://www.recoveryroofer.ca/#josh",
    "name": "Josh Pearsall",
    "url": "https://www.recoveryroofer.ca/story.html"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Recovery Roofer",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.recoveryroofer.ca/assets/img/recovery-roofer-logo.svg"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.recoveryroofer.ca/articles/toxic-drugs.html"
  }
}
</script>
'@

$done = 0; $skipped = 0; $missing = 0
foreach ($slug in $blocks.Keys) {
  $path = "articles\$slug.html"
  if (-not (Test-Path $path)) { Write-Host "MISSING FILE: $path" -ForegroundColor Red; $missing++; continue }
  $html = Get-Content $path -Raw
  if ($html -match '"@type"\s*:\s*"Article"') { Write-Host "skip (has schema): $slug" -ForegroundColor DarkGray; $skipped++; continue }
  $block = $blocks[$slug]
  $new = $html -replace '</head>', ($block + "`r`n</head>")
  Set-Content -Path $path -Value $new -Encoding UTF8 -NoNewline
  Write-Host "schema added: $slug" -ForegroundColor Green
  $done++
}
Write-Host "`n--- done: $done added, $skipped skipped, $missing missing ---" -ForegroundColor Cyan