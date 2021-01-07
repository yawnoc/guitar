\version "2.18.2"

\include "tetris-quartet.ly"

#(set-global-staff-size 18)

\score {
  \new StaffGroup \keepWithTag #'all \allMusic
  \layout {
    \context {
      \Staff \RemoveEmptyStaves
    }
  }
  \midi { }
}
