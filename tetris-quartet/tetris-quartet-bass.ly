\version "2.22.0"

\include "tetris-quartet.ly"

\header {
  instrument = "Bass"
}

\score {
  \new StaffGroup \keepWithTag #'bass \allMusic
  \layout {
    \context {
      \Staff \remove "Instrument_name_engraver"
    }
  }
}
