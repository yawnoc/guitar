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
    \concat {
      "Lilypond source code available at <"
      \with-url \origin-url { \typewriter \origin-url }
      ">."
    }
  }
  tagline = ##f
}
