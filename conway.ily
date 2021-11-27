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
  \mergeDifferentlyDottedOn
  \numericTimeSignature
  \pointAndClickOff
}

origin-url = "https://github.com/yawnoc/guitar"

\header {
  copyright = \markup {
    \center-column {
      \vspace #1
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

stringNumbersAbove = { \set stringNumberOrientations = #'(up) }
stringNumbersBelow = { \set stringNumberOrientations = #'(down) }

fingeringAbove = { \set fingeringOrientations = #'(up) }
fingeringBelow = { \set fingeringOrientations = #'(down) }
fingeringAleft = { \set fingeringOrientations = #'(left) }
fingeringAright = { \set fingeringOrientations = #'(right) }

overrideHorizontalShift = #(define-scheme-function
  (parser location distance) (number?)
  #{
    \override NoteColumn.force-hshift = $distance
  #}
)

revertHorizontalShift = { \revert NoteColumn.force-hshift }

barreSpan = #(define-music-function
  (barre location label music) (string? ly:music?)
  (let
    (
      (elements (extract-named-music music '(NoteEvent EventChord)))
    )
    (if
      (pair? elements)
      (let
        (
          (first-element (first elements))
          (last-element (last elements))
        )
        (set!
          (ly:music-property first-element 'articulations)
          (cons
            (make-music 'TextSpanEvent 'span-direction -1)
            (ly:music-property first-element 'articulations)
          )
        )
        (set!
          (ly:music-property last-element 'articulations)
          (cons
            (make-music 'TextSpanEvent 'span-direction 1)
            (ly:music-property last-element 'articulations)
          )
        )
      )
    )
  )
  #{
    \once \override TextSpanner.font-shape = #'upright
    \once \override TextSpanner.style = #'line
    \once \override TextSpanner.bound-details = #`(
      (left
        (text . ,#{ \markup { \raise #-.55 { #label \hspace #0.7 }} #})
        (Y . 0)
        (padding . -0.8)
        (attach-dir . -2)
      )
      (right
        (text . ,#{ \markup { \draw-line #'(0 . -1.3) } #}) ;; draw hook
        (Y . 0)
        (padding . -0.5)
        (attach-dir . 2)
      )
    )
    \once \override TextSpanner #'after-line-breaking = #(lambda (grob)
      (let*
        (
          (originalGrob (ly:grob-original grob))
          (splitGrobs (ly:spanner-broken-into originalGrob))
        )
        (if
          (and
            (>= (length splitGrobs) 2)
            (not (eq? (car (last-pair splitGrobs)) grob))
          )
          (ly:grob-set-nested-property! grob
            '(bound-details right text)
            #{ \markup { \draw-line #'(0 . 0) } #} ;; suppress draw hook
          )
        )
      )
    )
    $music
  #}
)

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

nudgeNextBarre = #(define-scheme-function
  (parser location distance) (number?)
  #{
    \once \override TextScript.X-offset = $distance
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Goto statements
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

setGotoVisibility = {
  \once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #f)
}

makeGotoMark = #(define-scheme-function
  (parser location label) (string?)
  #{
    \mark \markup { \small \italic $label }
  #}
)

simultaneousMarkSeparator = {
  \cadenzaOn
    s1073741824 % stupid, but works
  \cadenzaOff
}

coda = {
  \setGotoVisibility
  \mark \markup { \musicglyph #"scripts.coda" }
}

fine = {
  \setGotoVisibility
  \makeGotoMark Fine
}

dcAlCoda = {
  \setGotoVisibility
  \makeGotoMark "D.C. al Coda"
}

dcAlFine = {
  \setGotoVisibility
  \makeGotoMark "D.C. al Fine"
}

toCoda = {
  \setGotoVisibility
  \makeGotoMark "to Coda"
}
