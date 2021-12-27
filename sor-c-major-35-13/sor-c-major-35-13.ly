\version "2.22.0"


\include "../conway.ily"


\header {
  title = "Exercise 13 (in 24 Very Easy Exercises)"
  subtitle = \markup {
    \center-column {
      "Opus 35, Number 13"
      "or, Segovia Study Number 2,"
      "commonly called Study in C"
    }
  }
  composer = "Fernando Sor"
  arranger = "Conway (edits)"
}


initialSignatures = {
  \tempo "Andante"
  \clef "treble_8"
  \key c \major
  \time 2/4
}


overrideHorizontalShiftLeftABit = { \overrideHorizontalShift #-0.4 }


highVoiceMusic = {
  
  \globalSettings
  \overrideHorizontalShiftLeftABit
  \fingeringAbove
  
  % Home theme
  \barNumberCheck #1
  \relative c' {
    \shiftOn
    <e-0>4 <c-1> |
    <g'-4>4 e8 c |
    <d-4>4 <e-0>8 <d-4> |
    <d-4>4 <c-1> |
    e4 c |
    g'4 e8 c |
    <b-0>4 <c-1>8 <e-0> |
    <d-4>2 |
  }
  
  % Home theme again
  \barNumberCheck #9
  \relative c' {
    e4 c |
    g'4 e8 c |
    d4 e8 d |
    d4 c |
    e4 c |
    g'4 e8 c |
    b4 c8 e |
    <d-4>2 |
  }
  
  % Away theme
  \barNumberCheck #17
  \relative c' {
    <d-4>4 d |
    <d-4>8 <c-1> <e-0> <g-4> |
    <g-4>8 <f-1> <f-1> <f-1> |
    <f-1>4 <e-0> |
    d4 d |
    d8 c e g |
    <f-1>8 <d-4> <e-0> <c-1> |
    \revertHorizontalShift
    <b-0>16 g a b c cis d dis |
    \overrideHorizontalShiftLeftABit
  }
  
  % Home theme final
  \barNumberCheck #25
  \relative c' {
    e4 c |
    g'4 e8 c |
    d4 <e-4>8 d |
    <d-4>4 <c-1> |
    cis4 cis |
    <e-0>8 <d-4> <f-1> <d-4> |
    <d-4>8 <c-1> <c-1> <b-0> |
    <c-1>4 r4 \barLineEnd
  }
  
}


lowVoiceMusic = {
  
  \globalSettings
  \fingeringBelow
  
  % Home theme
  \barNumberCheck #1
  \relative c {
    c2 |
    c2 |
    c2 |
    c2 |
    c2 |
    c2 |
    d8 f e c |
    b g a b |
  }
  
  % Home theme again
  \barNumberCheck #9
  \relative c {
    c2 |
    c2 |
    c2 |
    c2 |
    c2 |
    c2 |
    d8 f e c |
    b4 g |
  }
  
  % Away theme
  \barNumberCheck #17
  \relative c {
    b2 |
    c2 |
    d4 b |
    c2 |
    b2 |
    c2 |
    d8 b c a |
    <g-3>4 r4 |
  }
  
  % Home theme final
  \barNumberCheck #25
  \relative c {
    c2 |
    c2 |
    gis2 |
    a2 |
    g2 |
    f2 |
    g2 |
    c4 c8 r |
  }
  
}


middleVoiceMusic = {
  
  \globalSettings
  \fingeringBelow
  \stringNumbersBelow
  
  % Home theme
  \barNumberCheck #1
  \relative c {
    \shiftOff
    <c-3>16 <g'-0> <e-2> <g-0> e g e g |
    c, g' e g e[ g] e[ g] |
    <c,-3> g' <f-2> g f[ g] f[ g] |
    <c,-3> g' <e-2> g e g e g |
    c, g' e g e g e g |
    c, g' e g e[ g] e[ g] |
    \once \override Fingering.padding = #0.16
    \once \override StringNumber.padding = #1
    <d-4 \5> g <f-2> g <e-2>[ g] <c,-3>[ g'] |
    <b,-2> g' g, g' a, g' b, g' |
  }
  
  % Home theme again
  \barNumberCheck #9
  \relative c {
    c16 g' e g e g e g |
    c, g' e g e[ g] e[ g] |
    c, g' f g f[ g] f[ g] |
    c, g' e g e g e g |
    c, g' e g e g e g |
    c, g' e g e[ g] e[ g] |
    d g f g e[ g] c,[ g'] |
    <b,-2> g' d b <g-3>8 g' |
  }
  
  \override Fingering.staff-padding = #'()
  % Away theme
  \barNumberCheck #17
  \relative c {
    <b-2>16 g' <f-3> g f g f g |
    <c,-3>[ g'] <e-2>[ g] e[ g] e[ g] |
    <d-0>[ <b'-0>] <g-0>[ <b-0>] <b,-2>[ <d'-4>] <g,-0>[ <d'-4>] |
    <c,-3> <d'-4> <g,-0> <d'-4> <g,-0> <c-1> <e,-2> <g-0> |
    b, g' f g f g f g |
    c,[ g'] e[ g] e[ g] e[ g] |
    <d-0>[ g] <b,-2>[ g'] <c,-3>[ g'] <a,-0>[ g'] |
    s2 |
  }
  
  % Home theme final
  \barNumberCheck #25
  \relative c {
    c16 g' e g e g e g |
    c, g' e g e[ g] e[ g] |
    \barreSpan "(⅔)CIII" #'(0 . -1) { <gis,-2> <b'-3> f b f[ b] f[ b] } |
    a, <a'-3> <e-2> a e a e a |
    \barreSpan "(⅔)CII" { <g,-2> <bes'-3> e, bes' e, bes' e, bes' } |
    <f,-1>[ <a'-2>] <f-3>[ <a-2>] \barreSpan CI { f[ a] } f[ a] |
    <g,-3>[ g'] <e-2>[ g] <d-0>[ g] <f-4>[ g] |
    <c,-3> g' <e-2> g c,8 s |
  }
  
}


allMusic = {
  \new Staff \with {
    midiInstrument = #"acoustic guitar (nylon)"
  }
  \initialSignatures
  <<
    << \highVoiceMusic >>
      \\
    << \lowVoiceMusic >>
      \\
    << \middleVoiceMusic >>
  >>
}


\score {
  \allMusic
}

\score {
  \allMusic
  \midi { }
}
