\version "2.18.2"


\include "../conway.ily"


\header {
  title = "Fantasie Number 7"
  subtitle = \markup {
    \center-column {
      "Diana Poulton Number 1a: A Fantasie,"
      "in Standard tuning (per Conway's teacher, Mr Hall)"
    }
  }
  composer = "John Dowland"
  arranger = "Conway (arrangement)"
}


initialSignatures = {
  \clef "treble_8"
  \key e \major
  \time 2/2
}


allMusic = {
  \globalSettings
  \initialSignatures
}


\score {
  \allMusic
}
