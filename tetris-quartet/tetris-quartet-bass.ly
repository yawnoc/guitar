\version "2.18.2"

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
