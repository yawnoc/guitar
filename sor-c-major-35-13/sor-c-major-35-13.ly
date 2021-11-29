\version "2.18.2"


\include "../conway.ily"


\header {
  title = "Exercise 13 (in 24 Very Easy Exercises)"
  subtitle = \markup {
    \center-column {
      "Opus 35, Number 13"
      "or, Segovia Study Number 2"
      "commonly called, Study in C"
    }
  }
  composer = "Fernando Sor"
  arranger = "Conway"
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
    d2 |
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
    <b-0>16 <g-0> a b c cis d dis |
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
    g4 r4 |
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
  
  % Home theme
  \barNumberCheck #1
  \relative c {
    \shiftOff
    c16 g' e g e g e g |
    c, g' e g e[ g] e[ g] |
    c, g' f g f[ g] f[ g] |
    c, g' e g e g e g |
    c, g' e g e g e g |
    c, g' e g e[ g] e[ g] |
    d g f g e[ g] c,[ g'] |
    b, g' g, g' a, g' b, g' |
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
    b, g' d b g8 g' |
  }
  
  % Away theme
  \barNumberCheck #17
  \relative c {
    b16 g' f g f g f g |
    c,[ g'] e[ g] e[ g] e[ g] |
    d[ b'] g[ b] b,[ d'] g,[ d'] |
    c, d' g, d' g, c e, g |
    b, g' f g f g f g |
    c,[ g'] e[ g] e[ g] e[ g] |
    d[ g] b,[ g'] c,[ g'] a,[ g'] |
    s2 |
  }
  
  % Home theme final
  \barNumberCheck #25
  \relative c {
    c16 g' e g e g e g |
    c, g' e g e[ g] e[ g] |
    gis, b' f b f[ b] f[ b] |
    a, a' e a e a e a |
    g, bes' e, bes' e, bes' e, bes' |
    f,[ a'] f[ a] f[ a] f[ a] |
    g,[ g'] e[ g] d[ g] f[ g] |
    c, g' e g c,8 s |
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
