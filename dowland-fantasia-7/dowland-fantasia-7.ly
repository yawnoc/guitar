\version "2.22.0"


\include "../conway.ily"


\header {
  title = "Fantasia Number 7"
  subtitle = \markup {
    \center-column {
      "Diana Poulton Number 1a: A Fantasie"
      "Standard tuning (per Conway's teacher, Mr Hall)"
    }
  }
  composer = "John Dowland"
  arranger = "Conway (arrangement)"
}


\paper {
  systems-per-page = 7
  ragged-last = ##t
}


initialSignatures = {
  \clef "treble_8"
  \key e \major
  \time 2/2
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \set Timing.beamExceptions = #'(
    (
      end
        .
      (
        ((1 . 8) . (4 4)) ;; quavers by fours
        ((1 . 12) . (3 3 3 3)) ;; anything shorter by beat
      )
    )
  )
  \set Staff.connectArpeggios = ##t
}


markTriplets = #(define-scheme-function
  (parser location alignment text) (number? markup?)
  #{
    \once \override Score.RehearsalMark.self-alignment-X = $alignment
    \mark \markup { \normalsize $text }
  #}
)

bareTuplets = {
  \omit TupletBracket
  \omit TupletNumber
}


highVoiceMusic = {
  
  \colourOne
  
  % Main theme high
  \barNumberCheck #1
  \relative c'' {
    \fingeringAleft
    \stringNumbersBelow
    \stemDown
    <b-4>2 gis4 b |
    a gis <fis-4 \2>2 |
    <e-2>4 <gis-1> <fis-4> <e-0>~ |
    \stemUp
    e8 <fis-1> <dis-4>4 <e-0>4. dis8 |
    \barreSpan ½CII { cis8. dis16 } \once \fingeringAright <e-0>8 dis16 e
      <fis-1>8. gis16 a8 gis16 fis |
    <gis-1>8. <a-1>16 <b-4>4 <a-4> <gis-3> |
    \once \overrideFingeringExtraOffset #'(-0.4 . 0)
    \once \overrideHorizontalShift #0.3 <fis-3>4. fis8 e8 b4 <d-2>8 |
    cis4 <b-0> a8. <b-0>16 cis8 \once \fingeringAright <dis-4> |
    <e-0>2 s2 |
    s2 s4
  }
  
  % Main theme low
  \barNumberCheck #10
  \relative c' {
    \stringNumbersAbove
    <b-4 \4>4 |
    <gis-1> <b-0> <a-1 \3> <gis-2 \4> |
    \once \overrideFingeringExtraOffset #'(1 . 1.3)
    <fis-1>4. <gis-4>8 <a-1 \3> b cis <dis-4> |
    \once \overrideFingeringExtraOffset #'(-0.6 . 0)
    <e-0> fis^\barre ⅔CII <gis-4> <e-0> <a-4>4 \barreSpan CIV { gis~ |
    gis
      \shiftOn
        \once \overrideHorizontalShift #0
        <fis-4>
      \shiftOff
      \once \overrideHorizontalShift #0.45 gis4. gis8 } |
    <cis,-4>4 <e-0> fis \once \fingeringAright <gis-4> |
    <a-4>4. <a-4>8 <gis-3>4 fis |
    <b,-0>8 <e-0> e4~ e16 <e-0> <dis-3 \2> <cis-4 \3> dis16 e8 dis16 |
    <e-0>4
  }
  
  % Tee-tee taa high
  \barNumberCheck #18
  \relative c'' {
    s4 s2 |
    s2 c4.\rest <e,-0>8 |
    <fis-1>8 <gis-4> <a-4>4~ a8 a <gis-3>4 |
    fis2 <e-0>2~ |
    \once \overrideHorizontalShift #-0.25 e4.
      <fis-4 \2>8 <gis-3 \1>8 <a-4> <b-4>4~ |
    b \once \fingeringAright <ais-4> \barreSpan CVII { b4. <a-4>8 } |
    <gis-3 \2>8 <fis-1> <e-0>8 <fis-1>16 <gis-4> <a-4>4. <gis-4>8 |
    \barreSpan ⅚CII { <fis dis-3>8 <e-4> fis8 } <gis-3>16 <a-4> <b-4>4 <a-4> |
    <gis-4> <fis-3> <e-0>8 <gis-4> <fis-1> <e-0> |
    \once \overrideFingeringExtraOffset #'(-0.5 . 0)
    <gis-4>4 <fis-4~> fis8 <e-0> <e-0>4~ |
    e16 <e-0> <dis-3 \2> <cis-4 \3> dis e cis dis <e-0>4
  }
  
  % Tee-tee taa low
  \barNumberCheck #28
  \relative c' {
    <b-0>4~ |
    b8 <fis-2> <a-1>4~ a8 b gis4~ |
    gis8 <fis-4> <dis-1>4 e4. <fis-1>8 |
    <gis-2> <fis-1> <gis-2> <a-4>
      \once \overrideFingeringExtraOffset #'(-0.6 . 0) <b-0>4. b8 |
    \shiftOn
    \barreSpan ½CII { \overrideHorizontalShift #-0.45 cis <b-4> cis <dis-4> }
      <e-0>2 |
    \revertHorizontalShift
    <dis-4>8 <b-0> <dis-4> <e-0> \once \overrideHorizontalShift #0 fis2 |
    \shiftOff
    <e-0>8 <a-4>~ a16 a <gis-4>8~ gis16 gis <fis-3>8~ fis16 fis <e-0>8~ |
    e16 <e-0> <dis-3 \2> <cis-4 \3> dis e cis dis
      \shiftOn
        \once \overrideHorizontalShift #-0.3
        \once \overrideFingeringExtraOffset #'(0.15 . 0) <e-0>2 |
      \shiftOff
  }
  
  % Ascending scale
  \barNumberCheck #36
  {
    s1 * 3 |
    s2
  }
  
  % Tee-tee-tee
  \barNumberCheck #39
  \relative c' {
    s2 |
    s2 r8 <e-0> <e-0> \once \fingeringAright <e-0> |
    <dis-4> <b-0>~ b16 cis dis8 r8 <cis'-4> cis cis |
    \barreSpan CIV { <b-4>8 gis~ } gis16 <a-2> <b-4>8 <a-4>8 fis <a-4>4 |
    \barreSpan ⅚CIV { gis4. <a-2>8~ a gis <fis-4>4 |
    <eis-4>8 <fis-4>~ fis16 fis <eis-4>8 }
      \barreSpan CII #'(0 . -0.8) { r8 fis fis fis } |
    <dis-4>8. <e-0>16 <fis-1>8 ^\barre ⅚CII r <b,-0>8 <e-0>~ e16 e <dis-4>8 |
  }
  
  % Majestic theme
  \barNumberCheck #46
  \relative c' {
    s1 |
    b8\rest <gis'-4> <fis-2> <a-4> <gis-4> e \barreSpan ⅚CII { fis dis } |
    s1 |
    b8\rest <b'-4> e, <a-4> <gis-2> <e-0> \barreSpan ⅚CII { fis dis } |
    e2 s2 |
    r8 cis' b a gis8 fis16 e \barreSpan ⅚CII { fis8 dis } |
    e2 s2 |
    b8\rest e \barreSpan CII { fis16 gis a fis }
      <gis-3>8 <e-4> \barreSpan ⅚CII { fis dis } |
    e2 s2 |
    b8\rest e \barreSpan CII { fis16 gis <a-4> } <b-4>
      \once \overrideFingeringExtraOffset #'(0.1 . 0)
      <gis-1>8 <e-2> \barreSpan ⅚CII { fis dis } |
    e2 s2 |
    b8\rest e \barreSpan CII { fis16 gis a fis }
      \once \overrideFingeringExtraOffset #'(0.15 . 0)
      <gis-3>8 <e-4> \barreSpan ⅚CII { fis dis } |
    e2 s2 |
  }
  
  % Scale runs
  \barNumberCheck #59
  \relative c' {
    d16\rest <e b gis-1>8. s4 s2 |
    s1 * 9 |
  }
  
  % Majestic interlude
  \barNumberCheck #69
  \relative c'' {
    s1 |
    r8 gis4 fis8 gis e \barreSpan ⅚CII { fis dis } |
    s1 |
    \barreSpan CII #'(0 . -0.25) {
      r8 <a'-4>4
      \once \fingeringAright
      \once \overrideFingeringExtraOffset #'(-0.5 . 0)
        <gis-4>8
      <a-4> <fis-1>
    }
      \nudgeNextBarre #2
      \barreSpan ⅚CIV { gis eis } |
    r8 gis~ gis16 gis fis8~ fis16 gis e8 <dis-4> <b-0> |
    \barreSpan ⅚CII { fis'8. e16 dis cis b ais
      b16 cis dis cis <dis-4> <b-3> } <cis-2>8 |
  }
  
  % Triplet runs
  \barNumberCheck #75
  \markTriplets #-1 "triplets"
  \bareTuplets
  \relative c' {
    \triplet { <dis-4>8 <cis-2>4 } \triplet { <dis-4>8 b4 }
      \barLineVirtual \noBreak
      \triplet { b8 dis4 } \triplet { <cis-2>8 e <dis-4> } |
    \triplet { e8 gis fis } \triplet { gis8 e4 }
      \barLineVirtual \noBreak
      \triplet { e8 gis4 } \triplet { <fis-2>8 <a-4> <gis-3> } |
    \triplet { <a-4>8 <e-3>4 } \triplet { <e-3>8 <a-4> <e-3> }
      \barLineVirtual \noBreak
      \triplet { <e-0>8 <fis-1>4 ^\barre "(½CII)" }
      \triplet { <e-0>8 \nudgeNextBarre #1 <cis-1>4 ^\barre "(½CII)" } |
    \triplet {
      \barreSpan CII { <dis-4>8 fis4 <dis-4>8 } <b-0> \barreSpan CII { cis
      \barLineVirtual \noBreak
      <dis-4>8 fis a, } <b-0> <e-0> <dis-3>
    } |
    \tripletDuple { <gis-4>2. } \barLineVirtual \noBreak
      \tripletDuple { gis } |
    \tripletDuple { <fis-4> } \barLineVirtual \noBreak
      \tripletDuple { fis } |
    \tripletDuple { <b-4> } \barLineVirtual \noBreak
      \tripletDuple { b } |
    \tripletDuple { <a-4> } \barLineVirtual \noBreak
      \tripletDuple { <a-4> } |
    \tripletDuple { <gis-4> } \barLineVirtual \noBreak
      \tripletDuple { gis } |
    \tripletDuple { <fis-4> } \barLineVirtual \noBreak
      \tripletDuple { fis } |
    \tripletDuple { <e-0> } \barLineVirtual \noBreak
      \tripletDuple { e } |
    \triplet { <e-0>8 e <d-2> } \triplet { <cis-2> cis <b-0> }
      \barLineVirtual \noBreak
      \once \overrideBeamVerticalPositions #'(0.75 . 0.75)
      \triplet { <a-1> a <gis-1> } s4 |
    \tripletDuple { <e'-0>2. }  \barLineVirtual \noBreak
      s2 |
    \markTriplets #1 "END triplets"
  }
  
  % Finishing chords
  \barNumberCheck #88
  \relative c' {
    b8\rest
      \once \overrideFingeringExtraOffset #'(-1.3 . 0)
      <\footnote ‖ #'(0 . -1.5) \markup { ‖ \resonatesOn E 6 } e,-2  b' e>4.
      <e gis b e>2 \arpeggio
      \barLineEnd
  }
  
}


lowVoiceMusic = {
  
  \colourTwo
  
  % Main theme high
  \barNumberCheck #1
  \relative c {
    \fingeringAleft
    s1 * 6 |
    <b-2>2 <gis-3>4 <b-1> |
    a <gis-3> fis^\barre CII a |
    e <gis-3> fis e |
    b'2 e,4
  }
  
  % Main theme low
  \barNumberCheck #10
  \relative c {
    \stringNumbersBelow
    r4 |
    r4 <e-3 \5> <cis-3> <e-3>~ |
    e <dis-3> <cis-3> a |
    \once \overrideFingeringExtraOffset #'(-0.6 . 0)
    <gis-2> e fis gis |
    <a-2>2 gis |
    <cis-1>4. <b-1>8 a4 \once \fingeringAright <gis-2> |
    fis r e fis |
    \shiftOn
    \overrideHorizontalShift #0
      <gis-4>4.
    \shiftOff
      a8
      \once \overrideFingeringExtraOffset #'(-0.55 . 0)
      <b-1>2 |
    e,4
  }
  
  % Tee-tee taa high
  \barNumberCheck #18
  \relative c {
    s4 s4 s4 |
    s1 * 2 |
    \barreSpan ⅚CII { b4. b8 } <cis-2>8 <dis-4> <e-4 \5>4~ |
    \once \overrideHorizontalShift #1 e8 <e-4> <dis-3>4 <e-1>4 <dis-2 fis-1> |
    cis2 b |
    e, a |
    b4. a8 <gis-1>4 <fis-1> |
    e <dis'-1> \once \overrideFingeringExtraOffset #'(0 . -1.5) <cis-3>2 |
    \once \overrideFingeringExtraOffset #'(-0.5 . 0)
    <b-2 dis-1> \once \overrideFingeringExtraOffset #'(-0.6 . 0) <b-2> |
    <b-1> e,4
  }
  
  % Tee-tee taa low
  \barNumberCheck #28
  \relative c {
    r4 |
    s1 * 6 |
    s2
  }
  
  % Ascending scale
  \barNumberCheck #35
  \relative c, {
    s4 e8 <fis-2> |
    <gis-4> <a-0> <b-1 fis'-3> <cis-2> <dis-1> <b-2> <cis-4> <ais-1> |
    <b-1 fis'-3>4 <ais-1> <b-1> <fis-1> |
    b <gis-3> a <cis-3> |
    b2
  }
  
  % Tee-tee-tee
  \barNumberCheck #39
  \relative c, {
    e8 e'4 e8 |
    <dis-4>8 <b-1>~ b16 <cis-3> <dis-4>8
      \once \fingeringBelow
      \once \overrideFingeringExtraOffset #'(0.2 . 0)
      <cis-3>2 |
    <b-1>4 <gis-3> <a-0>2 |
    gis4 e fis2 |
    s1 * 3 |
  }
  
  % Majestic theme
  \barNumberCheck #46
  \relative c, {
    e8
      \footnote "‡" #'(0 . -2.5) \markup { "‡" \resonatesOn E 6 }
      <e'-2>4 <dis-1>8 e,4 b' |
    e,8 <e'-1>4 <dis-1>8 <e-1>4 b |
    e,8 <e'-1> <dis-3>4
      \footnote "‡" #'(0 . -2.5) \markup { } <e-2>
      <b-2 \6> |
    e,8 <gis-1> a <fis-1> e4 b' |
    e,8 <e'-1> <dis-3>4 e, <b'-2 \6> |
    e,2 e4 b' |
    e,2 e4 b' |
    e,8 <gis-3> fis4 e b' |
    e,8 <e'-1> <dis-3>4 e, <b'-2 \6> |
    e,8[ <gis-3>] fis8. b16\rest e,4 b' |
    e,8 <e'-1> <dis-3>4 e, <b'-2 \6> |
    e,8 <gis-3> fis4 e b' |
    e,8 <e'-1> <dis-3>4 e, <b'-2 \6> |
  }
  
  % Scale runs
  \barNumberCheck #59
  \relative c, {
    e2 e |
    <b'-1> <b-1> |
    a a |
    e e |
    <cis'-3> a |
    <b-1> <gis-3> |
    a <b-1> |
    e, <e'-1>4 b |
    <cis-3> a <b-1> <gis-3> |
    a <cis-3> b2 |
  }
  
  % Majestic interlude
  \barNumberCheck #69
  \relative c, {
    e8 <e'-2>4 <dis-4>8
      \footnote "§" #'(0 . -2.5) \markup { "§" \resonatesOn E 6 }
      <e-2>4 b |
    e,8 e'4 dis8 e4 b |
    <fis-2>8 <fis'-4>4 <eis-4>8
      \footnote "¶" #'(0 . -2.5) \markup { "¶" \resonatesOn F♯ 6 }
      <fis-4>4 <cis-4> |
    fis,8 <fis'-3>4
      \once \fingeringAright
      \once \overrideFingeringExtraOffset #'(0.2 . 0)
        <eis-3>8
      <fis-3>4 cis |
    e,8 e'4 dis8~ dis e <b-1~ fis'-3>4 |
    b8 b4.~ b8 b4 \once \overrideFingeringExtraOffset #'(1.4 . -2.6) <ais-1>8 |
  }
  
  % Triplet runs
  \barNumberCheck #75
  \bareTuplets
  \relative c {
    \triplet { <b-1 fis'-3>4 <ais-1>8 } \triplet { <b-1>4 gis8 }
      \triplet { gis4 b8 } \triplet { a4 <b-1>8 } |
    \triplet { e4 dis8 } \triplet { e4 cis8 }
      \triplet { cis4 e8 } \triplet { d4 <e-1>8 } |
    \triplet { <a,-0>4 <cis-2>8 } \triplet { <cis-2>4. }
      \triplet { <cis-2>4 <d-0>8 } \triplet { <cis-2>4 <a-0>8 } |
    \triplet { <b fis'-3>4 fis8 } \triplet { <b fis'-3>4 fis8 }
      \triplet { <b fis'-3>4 fis8 } \triplet { <gis-2>4 <b-1 fis'-2>8 } |
    \shiftOn
    \stemUp
    \triplet { e,8 e' e } \triplet { e e e }
      \triplet { b\rest e, e } \triplet { e e e } |
    \triplet { <b'-3> b ais } \triplet { b b fis }
      \triplet { b b fis } \triplet { b b a } |
    \triplet { <gis-1> e <b'-3 \6> } \triplet { gis e b' }
      \triplet { gis e b' } \triplet { gis e e } |
    \triplet { a a a } \triplet { a a b }
      \triplet { <cis-3> cis b } \triplet { cis cis <dis-1> } |
    \triplet { <e-1> e e } \triplet { e, e e }
      \triplet { e e fis } \triplet { gis gis a } |
    \triplet { <b-3> b ais } \triplet { b b fis }
      \triplet { a a fis } \triplet { b b a } |
    \triplet { <gis-3> e gis } \triplet { <a-3> e a }
      \triplet { <gis-3> gis e }
    \stemDown
    \shiftOff
      \triplet { <e'-1> e d } |
    \triplet { <cis-3> cis <b-1> } \triplet { <a-0> a <gis-3> }
      \triplet { <cis-3> cis <b-2> } \triplet { <a-0> a <gis-4> } |
    \triplet { <a-0> <gis-3> a } \triplet { gis a gis }
      \triplet { a gis a } \triplet { gis8 a4 } |
  }
  
  % Finishing chords
  \barNumberCheck #88
  \relative c, {
    e2 \shiftOn <e b'>2 \arpeggio |
  }
  
}


upperMiddleVoiceMusic = {
  
  \colourThree
  
  % Main theme high
  \barNumberCheck #1
  \relative c' {
    \fingeringAleft
    s1 * 5 |
    \once \overrideHorizontalShift #0.4 <b-0>4. <e-1>8
      cis8 <dis-3>
      \once \overrideHorizontalShift #0 <e-4>4 |
    \stemDown
    \once \overrideHorizontalShift #0 <b-0>2 s2 |
    \stemUp
    s1 |
    \nighNextBarre
    \once \overrideFingeringExtraOffset #'(-0.7 . 0)
    <gis-1>8 <a-3> <b-0> <cis-1>^\barre ½CII
      \barreSpan CII { <dis-4>8 cis16 \shiftOff dis } <e~ b_~>4 |
    <e-0 b-0> <dis-4> e
    \shiftOn
  }
  
  % Main theme low
  \barNumberCheck #10
  \relative c' {
    s4 |
    s1 * 2 |
    \stemDown
    <b-3 e,-1>2
    \stemUp
      \barreSpan CII { cis8 <dis-3> }
      \once \overrideHorizontalShift #0
      \once \override Tie.staff-position = #2.1
      <e-3>4_~ |
    e8 dis
      \shiftOff <cis-3>4 \shiftOn
      \once \overrideHorizontalShift #-0.75 dis2 |
    s1 |
    s2
      \stemUp
      \once \overrideFingeringExtraOffset #'(-0.55 . 0)
      <b-0>8. <e-4>16
      \once \fingeringAright
      \barreSpan CII { <dis-3>8 cis } |
      \shiftOff
      \stemDown
        \once \omit Stem b2
      \stemUp
      \shiftOn
      s2 |
    \once \overrideHorizontalShift #0 <gis-1>4
  }
  
  % Tee-tee taa high
  \barNumberCheck #18
  \relative c' {
    b4 cis8 dis <e-4 \2>4 |
    dis4 <cis-3 \3> <b-0>2 |
    \stemDown
    s2 <b-0>4 <e-4_~> |
    \once \overrideHorizontalShift #0.9 e8 <e-4>
      \once \overrideHorizontalShift #0 <dis-4>4 s2 |
    \stemUp
      \shiftOnn
      \once \overrideHorizontalShift #0
        <b-0>2
      \shiftOn
      \once \overrideFingeringExtraOffset #'(-0.6 . 0) <b-0>4. <b-0>8 |
    \stemDown
    \overrideHorizontalShift #0
    \barreSpan ⅚CIV { <cis-3>8 dis \once \fingeringAright <e-2>4 }
      <e-3>8. e16 <dis-2>4 |
    <e-2>4. <dis-3>8
      \once \overrideBeamVerticalPositions #'(-2.4 . -2.6) <cis-1>8 <b-0>
      <cis-1>4 |
    <b-2>4. s8 b8\rest <e-3>4 <dis-3>8~ |
    dis8 <cis-2>4 <b-0>8~
    \revertHorizontalShift
      b4 \once \overrideFingeringExtraOffset #'(1.4 . -2.5) <ais-2> |
    <b-0>4 <b-0>8 \once \overrideFingeringExtraOffset #'(0.15 . 0) <a-3>
      <gis-1>4 <fis-4>8 <e-1> |
    \overrideHorizontalShift #0
    <fis-2>2 <e-1>4
    \revertHorizontalShift
    \stemUp
  }
  
  % Tee-tee taa low
  \barNumberCheck #28
  \relative c {
    s4 |
    s1 * 2 |
    s2 \stemDown <fis-1>2 \stemUp |
    \shiftOff
    \footnote "*" #'(0 . -4) \markup { "*" \resonatesOn A 5 }
    a4. a8 <gis-1> <fis-4> <gis-1> <a-2> |
    \stemDown <b-3>2 \stemUp cis |
    \shiftOn
    s2
      \stemDown
      \overrideHorizontalShift #0
      <cis-2>4 <b-0> |
    \footnote "*" #'(0 . -4) \markup { }
    <a-1>2
      \stemUp
      \revertHorizontalShift
  }
  
  % Ascending scale
  \barNumberCheck #35
  \relative c {
    \shiftOff
    e8 fis gis <a-3> |
    <b-0> <cis-2> <dis-4> <e-0> <fis-3 b,-0> <dis-4> <e-0> <cis-2> |
    <dis-4> <fis-2>~ fis16 <cis-3> <fis-2>8~
      fis16 <dis-4> <fis-2>8~ fis16 <e-0> <dis-3>
      \barreSpan CII { <cis-1> |
    <dis-3> cis <b-3> <ais-2> } <b-0> cis dis b cis b cis dis e fis gis e |
    \barreSpan ⅚CII { fis e dis cis }
      \once \override TupletNumber.Y-offset = #6.5
      \triplet { <e-0>8 <dis-3 \2> e32 dis <cis-4 \3> dis } <e b gis-1>4
    \shiftOn
  }
  
  % Tee-tee-tee
  \barNumberCheck #39
  \relative c' {
    <b gis>4 |
    <b-0 fis-2> <b fis>
      \stemDown
      \once \overrideHorizontalShift #1.3
      <a-1>8 <gis-1>16 <fis-4>
      <gis-1>16 <b-0> \once \fingeringAright <ais-2>8 |
    \once \overrideHorizontalShift #0 <b-3>4 s4 s2 |
    s2
      \overrideHorizontalShift #0
      \shiftOnn cis4
      \shiftOn cis |
      \stemUp
    <cis-3> <cis-3 gis-4> <fis,-1>2 |
    \shiftOff
    \stemDown
    \once \overrideFingeringExtraOffset #'(-0.4 . 0)
    <gis-3>8 <fis-1> <gis-3>4 \once \fingeringAright <ais-2 fis-4>2 |
    \stemUp
    \shiftOn
    \once \overrideBeamVerticalPositions #'(0 . 0)
    <fis-3>8 <fis-3> <fis-3> <dis-1>
      \revertHorizontalShift
      \once \overrideFingeringExtraOffset #'(-0.75 . 0) <gis-1>4
      \once \overrideFingeringExtraOffset #'(-0.55 . 0) <fis-3> |
  }
  
  % Majestic theme
  \barNumberCheck #46
  \relative c' {
    b8\rest <gis-1> <fis-4> <a-2> gis e fis dis |
    \overrideHorizontalShift #0
    \stemDown s8 b'4 s8 b4 s4 \stemUp |
    \revertHorizontalShift
    b8\rest b8 <fis-1> <a-4> <gis-1 \4> <e-2> <fis-4> <dis-1> |
    \overrideHorizontalShift #0
    \stemDown s4. <dis'-3>8 <e-3>4 s4 \stemUp |
    \revertHorizontalShift
    g,8\rest b8 <fis-1> <a-4> <gis-1 \4> <e-2> <fis-4> <dis-1> |
    s2
      \stemDown
        \once \overrideHorizontalShift #0 b'4
      \stemUp
      s4 |
    g8\rest cis b a gis8 fis16 e fis8 dis |
    s1 |
    g8\rest e <fis-1>16 <gis-3> <a-4> <fis-1>
      <gis-1 \4>8 <e-2> <fis-4>
      \once \overrideFingeringExtraOffset #'(0.2 . 0) <dis-1> |
    s1 |
    g8\rest e <fis-1>16 <gis-3> <a-4> <b-0>
      <gis-1 \4>8 <e-2> <fis-4>
      \once \overrideFingeringExtraOffset #'(0.2 . 0) <dis-1> |
    s1 |
    g8\rest e <fis-1>16 <gis-3> <a-4> <fis-1>
      <gis-1 \4>8 <e-2> <fis-4> <dis-1> |
  }
  
  % Scale runs
  \barNumberCheck #59
  \relative c' {
    s16 \stemDown gis e fis \stemUp gis a b cis
      b e, e fis gis a b <cis-2> |
    <dis-4> b b cis dis e fis gis
      <fis-2> b, b cis dis e fis gis |
    <a-4> a, a b cis cis cis dis
      e a, a b cis dis e fis |
    gis fis e dis e fis gis fis
      gis e fis gis fis dis e fis |
    e dis e fis gis fis gis e
      fis e fis gis fis e dis <cis-2> |
    <dis-4> cis dis e dis cis b ais
      b ais b cis dis cis dis b |
    cis b cis dis e dis e <cis-2>
      <dis-4> cis dis e fis e fis dis |
    e dis e fis gis fis e dis
      e fis gis e
      \barreSpan ⅚CII { fis dis e fis } |
    e fis gis e
      <a-4> gis fis e
      <dis-4> cis b ais
      b cis dis b |
    cis b cis dis
      e fis gis e
      \barreSpan ⅚CII { fis e dis cis }
      \once \override TupletNumber.Y-offset = #6.5
      \once \overrideFingeringExtraOffset #'(0.15 . 0)
      \triplet { <e-0>8 <dis-3 \2> e32 dis <cis-4 \3> dis } |
  }
  
  % Majestic interlude
  \barNumberCheck #69
  \relative c' {
    \overrideHorizontalShift #0
    \stemDown
    s1 |
    s8 b4. b4 s4 |
    s1 |
    s8 cis4. cis4 s4 |
    s8 b4. s2 |
    s1 |
    \stemUp
    \revertHorizontalShift
  }
  
  % Triplet runs
  \barNumberCheck #75
  \bareTuplets
  \relative c' {
    s1 * 11 |
    s2
      \overrideHorizontalShift #0
      \triplet { <e-0>8 e4 }
      \revertHorizontalShift
      \triplet { <cis-3>8 cis <b-0> } |
    \once \overrideFingeringExtraOffset #'(-0.7 . 0)
    \triplet { <cis-1> <b-0> cis } \triplet { b cis b }
      \triplet { cis b cis }
      \triplet { b8. \nudgeNextBarre #0.5 cis16 ^\barre ½CII a8 } |
  }
  
  % Finishing chords
  \barNumberCheck #88
  \relative c' {
    \stemDown
    s8 <a-3> <gis-1> <fis-4> \shiftOff e2 |
  }
  
}


lowerMiddleVoiceMusic = {
  
  \colourFour
  
  % Main theme high
  \barNumberCheck #1
  \relative c' {
    \fingeringAleft
    \stringNumbersBelow
    s1 * 3 |
    \shiftOff
    <b-3 \3>2 <gis-1>4 <b-3> |
    a \once \fingeringAright <gis-1> <fis-3>2 |
    \once \overrideHorizontalShift #0.3 <e-3 \5>4. <gis-2 \4>8
      \barreSpan ⅔CII { <fis-2>4 e } |
    \shiftOn
    \stemUp
    \overrideBeamedStemLengths #'(3)
    \once \overrideFingeringExtraOffset #'(-0.5 . 0)
    <fis-4>8. <e-1>16 <dis-1>4 \stemDown
    \revertBeamedStemLengths
      \overrideHorizontalShift #0 <e-1>4 <fis-4>~ |
      \revertHorizontalShift
    \stemUp
    \barreSpan ⅔CII { fis8 e } \stemDown
      \overrideHorizontalShift #0 <e-1>4 <cis-3 fis-4>4 a |
    <b-2> <e-1> a <gis-1> |
      \revertHorizontalShift
    \stemUp
    \barreSpan ½CII { <fis-3>8 e }
      \overrideHorizontalShift #0 <fis-3>4 <e-1>
      \revertHorizontalShift
    \stemDown
  }
  
  % Main theme low
  \barNumberCheck #10
  \relative c {
    s4 |
    s1 * 2 |
    s2 s4 \overrideHorizontalShift #0 b'4~ |
    b \revertHorizontalShift
      \shiftOff cis \shiftOn
      \once \overrideHorizontalShift #0.3
      \fingeringAright
      \once \overrideFingeringExtraOffset #'(-2 . -1.2)
        <cis-3>8. cis16
      \once \overrideFingeringExtraOffset #'(-1 . -1.2)
      <bis-2>4 |
      \fingeringAleft
    \stemUp
    \once \overrideHorizontalShift #0 <gis-3>4 s4
      \once \overrideHorizontalShift #0 \barreSpan ⅔CII { <fis-3>8 e }
      \once \fingeringAright
      \once \overrideHorizontalShift #0 <e-1 b'-0>4 |
    \once \overrideHorizontalShift #0 \barreSpan CII { <e a>8. e16 } <dis-1>4
      \stemDown
      \overrideHorizontalShift #0 <e-1>4 a |
      \revertHorizontalShift
    \shiftOnn
      \once \overrideHorizontalShift #0 <gis-1>2
    \shiftOn
      <fis-2>4. fis8 |
    \once \overrideHorizontalShift #0 <e-2>4
  }
  
  % Tee-tee taa high
  \barNumberCheck #18
  \relative c {
    \shiftOff
    r4 r <e-1> |
    \barreSpan ⅔CIV { fis8 <gis-4> } <a-4>4~ a8 a <gis-3>4 |
    <fis-3>2 \once \overrideFingeringExtraOffset #'(-0.8 . 0) <e-1> |
    \shiftOnn
    s4 \once \overrideHorizontalShift #0 <b'-3>
    \shiftOn
    \stemUp
      \once \overrideFingeringExtraOffset #'(-0.7 . 0) <a-1> <gis-3> |
    \once \overrideHorizontalShift #0 <fis-1>2 s2 |
    \stemDown
    s1 * 5 |
    s2 s4
  }
  
  % Tee-tee taa low
  \barNumberCheck #28
  \relative c {
    s4 |
    \shiftOff
    <dis-4 \5>2 <e-2> |
    <b-2>4. b8 \barreSpan ⅚CII { <cis-3> b <cis-3> } <dis-3> |
    <e-3 \5>2
      \once \overrideFingeringExtraOffset #'(-0.6 . 0) <dis-3>4 <b-4 \6> |
    <fis'-3>4. \once \overrideFingeringExtraOffset #'(-0.6 . 0) <fis-3>8
      \footnote "†" #'(0 . -2.5) \markup { "†" \resonatesOn E 6 }
      <e-2>2 |
    s2 \barreSpan ½CII { a8 <fis-3> a <b-4> } |
    <cis-1>4 <b-0> <a-1> <gis-1> |
    <fis-2>2
      \footnote "†" #'(0 . -2.5) \markup { }
      \once \overrideFingeringExtraOffset #'(-0.3 . 0) <e-2>4
    \shiftOn
  }
  
  % Ascending scale
  \barNumberCheck #35
  {
    s4 |
    s1 * 3 |
    s2
  }
  
  % Tee-tee-tee
  \barNumberCheck #39
  \relative c {
    s2 |
    s1 |
    s2 s8 <fis-1 \4>4. |
    s2 \once \overrideHorizontalShift #0
      \barreSpan CII { <fis-3>4. <fis-3>8 } |
    <e-4>8 <cis-1>4. <d-3>4. <d-3>8 |
    \once \overrideHorizontalShift #-1.3 cis4
    \overrideHorizontalShift #0
    cis \once \fingeringAright <cis-3 fis,>2 |
    \revertHorizontalShift
    r8 <b-1> <b-1> <b-2> <gis-4>8. a16
      \once \overrideFingeringExtraOffset #'(0.1 . 0) <b-1>4 |
  }
  
  % Majestic theme
  \barNumberCheck #46
  {
    s1 * 13 |
  }
  
  % Scale runs
  \barNumberCheck #59
  {
    s1 * 10 |
  }
  
  % Majestic interlude
  \barNumberCheck #69
  \relative c' {
    \stemUp
    b8\rest <gis-1>4 <fis-2>8 <gis-1> <e-2> fis dis |
    s1 |
    b'8\rest <a-1>4 \once \overrideFingeringExtraOffset #'(-0.3 . 0) <gis-1>8
      <a-1> <fis-4> <gis-1> <eis-3> |
    s1 * 3 |
    \stemDown
  }
  
}


allMusic = {
  \new Staff \with {
    midiInstrument = #"acoustic guitar (nylon)"
    \consists "Span_arpeggio_engraver"
  }
  \globalSettings
  \initialSignatures
  <<
    << \highVoiceMusic >>
      \\
    << \lowVoiceMusic >>
      \\
    << \upperMiddleVoiceMusic >>
      \\
    << \lowerMiddleVoiceMusic >>
  >>
}


\score {
  \allMusic
}

\score {
  \allMusic
  \midi { }
}
