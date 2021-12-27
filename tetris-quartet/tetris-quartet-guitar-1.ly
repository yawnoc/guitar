\version "2.22.0"

\include "tetris-quartet.ly"

\header {
  instrument = "Guitar 1"
}

\score {
  \new StaffGroup \keepWithTag #'guitar-1 \allMusic
  \layout {
    \context {
      \Staff \remove "Instrument_name_engraver"
    }
  }
}
