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


allMusic = {
  \initialSignatures
  <<
    << \highVoiceMusic >>
  >>
}


\score {
  \allMusic
}
