%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% General
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\paper {
  top-margin = 1.5\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
  footnote-separator-markup = \markup { \vspace #1.5 }
}

globalSettings = {
  \accidentalStyle modern
  \compressFullBarRests
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \numericTimeSignature
  \pointAndClickOff
  \override TextScript.extra-offset = #'(0 . 0.7)
  \override Score.FootnoteItem.annotation-line = ##f
}

origin-url = "https://github.com/yawnoc/guitar"

\header {
  copyright = \markup {
    \center-column {
      \vspace #1
      \concat {
        "This score is released into the public domain (CC0)."
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

triplet = #(define-music-function
  (parser location music) (ly:music?)
  #{
    \tuplet 3/2 { $music }
  #}
)

tripletDuple = #(define-music-function
  (parser location music) (ly:music?)
  #{
    \tuplet 6/4 { $music }
  #}
)

overrideBeamedStemLengths = #(define-scheme-function
  (parser location lengths) (list?)
  #{
    \override Stem.details.beamed-lengths = $lengths
  #}
)
revertBeamedStemLengths = { \revert Stem.details.beamed-lengths }

overrideBeamVerticalPositions = #(define-scheme-function
  (parser location positions) (pair?)
  #{
    \override Beam.positions = $positions
  #}
)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Semantic bar lines
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

barLineGoto = { \bar "||" }
barLineKeyChange = { \bar "||" }
barLineEnd = { \bar "|." }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guitar notation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

stringNumbersAbove = { \set stringNumberOrientations = #'(up) }
stringNumbersBelow = { \set stringNumberOrientations = #'(down) }

fingeringAbove = { \set fingeringOrientations = #'(up) }
fingeringBelow = { \set fingeringOrientations = #'(down) }
fingeringAleft = { \set fingeringOrientations = #'(left) }
fingeringAright = { \set fingeringOrientations = #'(right) }

startGraceMusic = {
  <>(
  \override Fingering.font-size = -6
}
stopGraceMusic = {
  \revert Fingering.font-size
  <>)
}

overrideHorizontalShift = #(define-scheme-function
  (parser location distance) (number?)
  #{
    \override NoteColumn.force-hshift = $distance
  #}
)
revertHorizontalShift = { \revert NoteColumn.force-hshift }

overrideFingeringExtraOffset = #(define-scheme-function
  (parser location offsetPair) (pair?)
  #{
    \override Fingering.extra-offset = #offsetPair
  #}
)

overrideFingeringPadding = #(define-scheme-function
  (parser location distance) (number?)
  #{
    \override Fingering.padding = $distance
  #}
)

barreSpan = #(define-music-function
  (parser location label offsetPair music)
  (string? (pair? (cons 0 0)) ly:music?)
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
    \once \override TextSpanner.extra-offset = #offsetPair
    \once \override TextSpanner.bound-details = #`(
      (left
        (text . ,#{ \markup { \raise #-0.7 { #label \hspace #0.7 }} #})
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
          (begin
            (ly:grob-set-nested-property! grob
              '(bound-details right text)
              #{ \markup { \draw-line #'(0 . 0) } #} ;; suppress draw hook
            )
            (ly:grob-set-property! grob
              'extra-offset
              (cons
                (car offsetPair)
                (+ (cdr offsetPair) 0.7) ;; correction for suppressed hook
              )
            )
            (ly:grob-set-nested-property! grob
              '(bound-details right padding)
              #'-3 ;; increase spanner length
            )
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

nighNextBarre = {
  \override TextScript.outside-staff-priority = #349 % < 350 (TextSpanner)
}

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

#(define-markup-command
  (markupString layout properties stringNumber) (markup?)
  (interpret-markup layout properties
    #{
      \markup \circle { \bold #stringNumber }
    #}
  )
)

#(define-markup-command
  (resonatesOn layout properties note stringNumber) (markup? markup?)
  (interpret-markup layout properties
    #{
      \markup { #note "resonates on" \markupString #stringNumber }
    #}
  )
)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Goto statements
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

overrideGotoVisibility = {
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
  \overrideGotoVisibility
  \mark \markup { \musicglyph #"scripts.coda" }
}

fine = {
  \overrideGotoVisibility
  \makeGotoMark Fine
}

dcAlCoda = {
  \overrideGotoVisibility
  \makeGotoMark "D.C. al Coda"
}

dcAlFine = {
  \overrideGotoVisibility
  \makeGotoMark "D.C. al Fine"
}

toCoda = {
  \overrideGotoVisibility
  \makeGotoMark "to Coda"
}
