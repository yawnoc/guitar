\version "2.18.2"


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
  
  \override NoteHead.color = #darkblue
  
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
    s2 c4.\rest e,8 |
    fis8 gis a4~ a8 a gis4 |
    fis2 e2~ |
    \once \overrideHorizontalShift #-0.25 e4. fis8 gis8 a b4~ |
    b ais b4. a8 |
    gis8 fis e8 fis16 gis a4. gis8 |
    <fis dis>8 e fis8 gis16 a b4 a |
    gis fis e8 gis fis e |
    gis4 fis~ fis8 e e4~ |
    e16 e dis cis dis e cis dis e4
  }
  
  % Tee-tee taa low
  \barNumberCheck #28
  \relative c' {
    b4~ |
    b8 fis a4~ a8 b gis4~ |
    gis8 fis dis4 e4. fis8 |
    gis fis gis a b4. b8 |
    \shiftOn
    \overrideHorizontalShift #-0.45 cis b cis dis e2 |
    \revertHorizontalShift
    dis8 b dis e \once \overrideHorizontalShift #0 fis2 |
    \shiftOff
    e8 a~ a16 a gis8~ gis16 gis fis8~ fis16 fis e8~ |
    e16 e dis cis dis e cis dis
      \shiftOn
        \once \overrideHorizontalShift #-0.3 e2 |
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
    s2 r8 e e e |
    dis b~ b16 cis dis8 r8 cis' cis cis |
    b8 gis~ gis16 a b8 a8 fis a4 |
    gis4. a8~ a gis fis4 |
    eis8 fis~ fis16 fis eis8 r8 fis fis fis |
    dis8. e16 fis8 r b,8 e~ e16 e dis8 |
  }
  
  % Majestic theme
  \barNumberCheck #46
  \relative c' {
    s1 |
    b8\rest gis' fis a gis e fis dis |
    s1 |
    b8\rest b' e, a gis e fis dis |
    e2 s2 |
    r8 cis' b a gis8 fis16 e fis8 dis |
    e2 s2 |
    b8\rest e fis16 gis a fis gis8 e fis dis |
    e2 s2 |
    b8\rest e fis16 gis a b gis8 e fis dis |
    e2 s2 |
    b8\rest e fis16 gis a fis gis8 e fis dis |
    e2 s2 |
  }
  
  % Scale runs
  \barNumberCheck #59
  \relative c' {
    d16\rest <e b>8. s4 s2 |
    s1 * 9 |
  }
  
  % Majestic interlude
  \barNumberCheck #69
  \relative c'' {
    s1 |
    r8 gis4 fis8 gis e fis dis |
    s1 |
    r8 a'4 gis8 a fis gis eis |
    r8 gis~ gis16 gis fis8~ fis16 gis e8 dis b |
    fis'8. e16 dis cis b ais
      b16 cis dis cis dis b cis8 |
  }
  
  % Triplet runs
  \barNumberCheck #75
  \markTriplets #-1 "triplets"
  \bareTuplets
  \relative c' {
    \triplet { dis8 cis4 } \triplet { dis8 b4 }
      \triplet { b8 dis4 } \triplet { cis8 e dis } |
    \triplet { e8 gis fis } \triplet { gis8 e4 }
      \triplet { e8 gis4 } \triplet { fis8 a gis } |
    \triplet { a8 e4 } \triplet { e8 a e }
      \triplet { e8 fis4 } \triplet { e8 cis4 } |
    \triplet { dis8 fis4 } \triplet { dis8 b cis }
      \triplet { dis8 fis a, } \triplet { b e dis } |
    \tripletDuple { gis2. } \tripletDuple { gis } |
    \tripletDuple { fis } \tripletDuple { fis } |
    \tripletDuple { b } \tripletDuple { b } |
    \tripletDuple { a } \tripletDuple { a } |
    \tripletDuple { gis } \tripletDuple { gis } |
    \tripletDuple { fis } \tripletDuple { fis } |
    \tripletDuple { e } \tripletDuple { e } |
    \triplet { e8 e d } \triplet { cis cis b }
      \once \overrideBeamVerticalPositions #'(0.75 . 0.75)
      \triplet { a a gis } s4 |
    \tripletDuple { e'2. } s2 |
    \markTriplets #1 "END triplets"
  }
  
  % Finishing chords
  \barNumberCheck #88
  \relative c' {
    b8\rest <e, b' e>4.
      <e gis b e>2 \arpeggio
      \barLineEnd
  }
  
}


lowVoiceMusic = {
  
  \override NoteHead.color = #darkgreen
  
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
      a8 <b-1>2 |
    e,4
  }
  
  % Tee-tee taa high
  \barNumberCheck #18
  \relative c {
    s4 s4 s4 |
    s1 * 2 |
    b4. b8 cis8 dis e4~ |
    \once \overrideHorizontalShift #1 e8 e dis4 e4 <dis fis> |
    cis2 b |
    e, a |
    b4. a8 gis4 fis |
    e dis' cis2 |
    <b dis> b |
    b e,4
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
    s4 e8 fis |
    gis a <b fis'> cis dis b cis ais |
    <b fis'>4 ais b fis |
    b gis a cis |
    b2
  }
  
  % Tee-tee-tee
  \barNumberCheck #39
  \relative c, {
    e8 e'4 e8 |
    dis8 b~ b16 cis dis8 cis2 |
    b4 gis a2 |
    gis4 e fis2 |
    s1 * 3 |
  }
  
  % Majestic theme
  \barNumberCheck #46
  \relative c, {
    e8 e'4 dis8 e,4 b' |
    e,8 e'4 dis8 e4 b |
    e,8 e' dis4 e b |
    e,8 gis a fis e4 b' |
    e,8 e' dis4 e, b' |
    e,2 e4 b' |
    e,2 e4 b' |
    e,8 gis fis4 e b' |
    e,8 e' dis4 e, b' |
    e,8[ gis] fis8. b16\rest e,4 b' |
    e,8 e' dis4 e, b' |
    e,8 gis fis4 e b' |
    e,8 e' dis4 e, b' |
  }
  
  % Scale runs
  \barNumberCheck #59
  \relative c, {
    e2 e |
    b' b |
    a a |
    e e |
    cis' a |
    b gis |
    a b |
    e, e'4 b |
    cis a b gis |
    a cis b2 |
  }
  
  % Majestic interlude
  \barNumberCheck #69
  \relative c, {
    e8 e'4 dis8 e4 b |
    e,8 e'4 dis8 e4 b |
    fis8 fis'4 eis8 fis4 cis |
    fis,8 fis'4 eis8 fis4 cis |
    e,8 e'4 dis8~ dis e <b~ fis'>4 |
    b8 b4.~ b8 b4 ais8 |
  }
  
  % Triplet runs
  \barNumberCheck #75
  \bareTuplets
  \relative c {
    \triplet { <b fis'>4 ais8 } \triplet { b4 gis8 }
      \triplet { gis4 b8 } \triplet { a4 b8 } |
    \triplet { e4 dis8 } \triplet { e4 cis8 }
      \triplet { cis4 e8 } \triplet { d4 e8 } |
    \triplet { a,4 cis8 } \triplet { cis4. }
      \triplet { cis4 d8 } \triplet { cis4 a8 } |
    \triplet { <b fis'>4 fis8 } \triplet { <b fis'>4 fis8 }
      \triplet { <b fis'>4 fis8 } \triplet { gis4 <b fis'>8 } |
    \shiftOn
    \stemUp
    \triplet { e,8 e' e } \triplet { e e e }
      \triplet { r e, e } \triplet { e e e } |
    \triplet { b' b ais } \triplet { b b fis }
      \triplet { b b fis } \triplet { b b a } |
    \triplet { gis e b' } \triplet { gis e b' }
      \triplet { gis e b' } \triplet { gis e e } |
    \triplet { a a a } \triplet { a a b }
      \triplet { cis cis b } \triplet { cis cis dis } |
    \triplet { e e e } \triplet { e, e e }
      \triplet { e e fis } \triplet { gis gis a } |
    \triplet { b b ais } \triplet { b b fis }
      \triplet { a a fis } \triplet { b b a } |
    \triplet { gis e gis } \triplet { a e a }
      \triplet { gis gis e }
    \stemDown
    \shiftOff
      \triplet { e' e d } |
    \triplet { cis cis b } \triplet { a a gis }
      \triplet { cis cis b } \triplet { a a gis } |
    \triplet { a gis a } \triplet { gis a gis }
      \triplet { a gis a } \triplet { gis8 a4 } |
  }
  
  % Finishing chords
  \barNumberCheck #88
  \relative c, {
    e2 \shiftOn <e b'>2 \arpeggio |
  }
  
}


upperMiddleVoiceMusic = {
  
  \override NoteHead.color = #darkyellow
  
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
    s2 \stemUp <b-0>8. <e-4>16 \barreSpan CII { <dis-3>8 cis } |
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
    b4 cis8 dis e4 |
    dis4 cis b2 |
    \stemDown
    s2 b4 e_~ |
    \once \overrideHorizontalShift #0.9 e8 e
      \once \overrideHorizontalShift #0 dis4 s2 |
    \stemUp
      \shiftOnn
      \once \overrideHorizontalShift #0
        b2
      \shiftOn
      b4. b8 |
    \stemDown
    \overrideHorizontalShift #0
    cis8 dis e4 e8. e16 dis4 |
    e4. dis8
      \once \overrideBeamVerticalPositions #'(-2.4 . -2.6) cis8 b
      cis4 |
    b4. s8 b8\rest e4 dis8~ |
    dis8 cis4 b8~
    \revertHorizontalShift
      b4 ais |
    b4 b8 a gis4 fis8 e |
    \overrideHorizontalShift #0
    fis2 e4
    \revertHorizontalShift
    \stemUp
  }
  
  % Tee-tee taa low
  \barNumberCheck #28
  \relative c {
    s4 |
    s1 * 2 |
    s2 \stemDown fis2 \stemUp |
    \shiftOff
    \footnote "*" #'(0 . -4) \markup { "*" \resonatesOn A 5 }
    a4. a8 gis fis gis a |
    \stemDown b2 \stemUp cis |
    \shiftOn
    s2
      \stemDown
      \overrideHorizontalShift #0
      cis4 b |
    \footnote "*" #'(0 . -4) \markup { }
    a2
      \stemUp
      \revertHorizontalShift
  }
  
  % Ascending scale
  \barNumberCheck #35
  \relative c {
    \shiftOff
    e8 fis gis a |
    b cis dis e <fis b,> dis e cis |
    dis fis~ fis16 cis fis8~ fis16 dis fis8~ fis16 e dis cis |
    dis cis b ais b cis dis b cis b cis dis e fis gis e |
    fis e dis cis \triplet { e8 dis e32 dis cis dis } <e b gis>4
    \shiftOn
  }
  
  % Tee-tee-tee
  \barNumberCheck #39
  \relative c' {
    <b gis>4 |
    <b fis> <b fis>
      \stemDown
      \once \overrideHorizontalShift #1.3
      a8 gis16 fis gis16 b ais8 |
    \once \overrideHorizontalShift #0 b4 s4 s2 |
    s2
      \overrideHorizontalShift #0
      \shiftOnn cis4
      \shiftOn cis |
      \stemUp
    cis <cis gis> fis,2 |
    \shiftOff
    \stemDown
    gis8 fis gis4 <ais fis>2 |
    \stemUp
    \shiftOn
    \once \overrideBeamVerticalPositions #'(0 . 0)
    fis8 fis fis dis
      \revertHorizontalShift
      gis4 fis |
  }
  
  % Majestic theme
  \barNumberCheck #46
  \relative c' {
    b8\rest gis fis a gis e fis dis |
    \overrideHorizontalShift #0
    \stemDown s8 b'4 s8 b4 s4 \stemUp |
    \revertHorizontalShift
    b8\rest b8 fis a gis e fis dis |
    \overrideHorizontalShift #0
    \stemDown s4. dis'8 e4 s4 \stemUp |
    \revertHorizontalShift
    g,8\rest b8 fis a gis e fis dis |
    s2
      \stemDown
        \once \overrideHorizontalShift #0 b'4
      \stemUp
      s4 |
    g8\rest cis b a gis8 fis16 e fis8 dis |
    s1 |
    g8\rest e fis16 gis a fis gis8 e fis dis |
    s1 |
    g8\rest e fis16 gis a b gis8 e fis dis |
    s1 |
    g8\rest e fis16 gis a fis gis8 e fis dis |
  }
  
  % Scale runs
  \barNumberCheck #59
  \relative c' {
    s16 \stemDown gis e fis \stemUp gis a b cis
      b e, e fis gis a b cis |
    dis b b cis dis e fis gis
      fis b, b cis dis e fis gis |
    a a, a b cis cis cis dis
      e a, a b cis dis e fis |
    gis fis e dis e fis gis fis
      gis e fis gis fis dis e fis |
    e dis e fis gis fis gis e
      fis e fis gis fis e dis cis |
    dis cis dis e dis cis b ais
      b ais b cis dis cis dis b |
    cis b cis dis e dis e cis
      dis cis dis e fis e fis dis |
    e dis e fis gis fis e dis
      e fis gis e
      fis dis e fis |
    e fis gis e
      a gis fis e
      dis cis b ais
      b cis dis b |
    cis b cis dis
      e fis gis e
      fis e dis cis
      \triplet { e8 dis e32 dis cis dis } |
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
      \triplet { e8 e4 }
      \revertHorizontalShift
      \triplet { cis8 cis b } |
    \triplet { cis b cis } \triplet { b cis b }
      \triplet { cis b cis } \triplet { b8. cis16 a8 } |
  }
  
  % Finishing chords
  \barNumberCheck #88
  \relative c' {
    \stemDown
    s8 a gis fis \shiftOff e2 |
  }
  
}


lowerMiddleVoiceMusic = {
  
  \override NoteHead.color = #darkmagenta
  
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
    \once \overrideFingeringExtraOffset #'(0 . -0.5)
    \barreSpan ⅓CII { <fis-3>8 e }
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
    r4 r e |
    fis8 gis a4~ a8 a gis4 |
    fis2 e |
    \shiftOnn
    s4 \once \overrideHorizontalShift #0 b'
    \shiftOn
    \stemUp
      a gis |
    \once \overrideHorizontalShift #0 fis2 s2 |
    \stemDown
    s1 * 5 |
    s2 s4
  }
  
  % Tee-tee taa low
  \barNumberCheck #28
  \relative c {
    s4 |
    \shiftOff
    dis2 e |
    b4. b8 cis b cis dis |
    e2 dis4 b |
    fis'4. fis8
      \footnote "†" #'(0 . -2.5) \markup { "†" \resonatesOn E 6 }
      e2 |
    s2 a8 fis a b |
    cis4 b a gis |
    fis2
      \footnote "†" #'(0 . -2.5) \markup { }
      e4
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
    s2 s8 fis4. |
    s2 \once \overrideHorizontalShift #0 fis4. fis8 |
    e8 cis4. d4. d8 |
    \once \overrideHorizontalShift #-1.3 cis4
    \overrideHorizontalShift #0
    cis <cis fis,>2 |
    \revertHorizontalShift
    r8 b b b gis8. a16 b4 |
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
    b8\rest gis4 fis8 gis e fis dis |
    s1 |
    b'8\rest a4 gis8 a fis gis eis |
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
