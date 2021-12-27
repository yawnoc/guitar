\version "2.22.0"

\include "tetris-quartet.ly"

\header {
  instrument = "Guitar 3"
}

\score {
  \new StaffGroup \keepWithTag #'guitar-3 \allMusic
  \layout {
    \context {
      \Staff \remove "Instrument_name_engraver"
    }
  }
}
