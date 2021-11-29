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


highVoiceMusic = {
  
  \globalSettings
  
  % Home theme
  \barNumberCheck #1
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
    d4 d |
    d8 c e g |
    g8 f f f |
    f4 e |
    d4 d |
    d8 c e g |
    f8 d e c |
    b16 g a b c cis d dis |
  }
  
  % Home theme final
  \barNumberCheck #25
  \relative c' {
    e4 c |
    g'4 e8 c |
    d4 e8 d |
    d4 c |
    cis4 cis |
    e8 d f d |
    d8 c c b |
    c4 r4 \barLineEnd
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
    c16 g' e g e g e g |
    c, g' e g e g e g |
    c, g' f g f g f g |
    c, g' e g e g e g |
    c, g' e g e g e g |
    c, g' e g e g e g |
    d g f g e g c, g' |
    b, g' g, g' a, g' b, g' |
  }
  
  % Home theme again
  \barNumberCheck #9
  \relative c {
    c16 g' e g e g e g |
    c, g' e g e g e g |
    c, g' f g f g f g |
    c, g' e g e g e g |
    c, g' e g e g e g |
    c, g' e g e g e g |
    d g f g e g c, g' |
    b, g' d b g8 g' |
  }
  
  % Away theme
  \barNumberCheck #17
  \relative c {
    b16 g' f g f g f g |
    c, g' e g e g e g |
    d b' g b b, d' g, d' |
    c, d' g, d' g, c e, g |
    b, g' f g f g f g |
    c, g' e g e g e g |
    d g b, g' c, g' a, g' |
    s2 |
  }
  
  % Home theme final
  \barNumberCheck #25
  \relative c {
    c16 g' e g e g e g |
    c, g' e g e g e g |
    gis, b' f b f b f b |
    a, a' e a e a e a |
    g, bes' e, bes' e, bes' e, bes' |
    f, a' f a f a f a |
    g, g' e g d g f g |
    c, g' e g c,8 s |
  }
  
}


allMusic = {
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
