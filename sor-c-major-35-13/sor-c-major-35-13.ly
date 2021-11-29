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


allMusic = {
  \initialSignatures
}


\score {
  \allMusic
}
