%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% General
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\paper {
  top-margin = 1.5\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
}

globalSettings = {
  \accidentalStyle modern
  \compressFullBarRests
  \mergeDifferentlyHeadedOn
  \numericTimeSignature
  \pointAndClickOff
}

origin-url = "https://github.com/yawnoc/guitar"

\header {
  copyright = \markup {
    \center-column {
      \concat {
        "This arrangement is released into the public domain (CC0)."
      }
      \concat {
        "Lilypond source code available at <"
        \with-url \origin-url { \typewriter \origin-url }
        ">."
      }
    }
  }
  tagline = ##f
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guitar notation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

barre = #(define-scheme-function
  (parser location label) (string?)
  #{
    \markup {
      \center-align {
        \hspace #0.7
        $label
      }
    }
  #}
)

position = #(define-scheme-function
  (parser location label) (string?)
  #{
    \markup {
      \center-align {
        \hspace #0.5
        $label
      }
    }
  #}
)
