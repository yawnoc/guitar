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
}


highVoiceMusic = {
  
  \override NoteHead.color = #darkblue
  
  % Main theme high
  \barNumberCheck #1
  \relative c'' {
    \stemDown
    b2 gis4 b |
    a gis fis2 |
    e4 gis fis e~ |
    \stemUp
    e8 fis dis4 e4. dis8 |
    cis8. dis16 e8 dis16 e fis8. gis16 a8 gis16 fis |
    gis8. a16 b4 a gis |
    \once \overrideHorizontalShift #0.3 fis4. fis8 e8 b4 d8 |
    cis4 b a8. b16 cis8 dis |
    e2 s2 |
    s2 s4
  }
  
  % Main theme low
  \barNumberCheck #10
  \relative c' {
    b4 |
    gis b a gis |
    fis4. gis8 a b cis dis |
    e fis gis e a4 gis~ |
    gis
      \shiftOn
        \once \overrideHorizontalShift #0
        fis
      \shiftOff
      \once \overrideHorizontalShift #0.45 gis4. gis8 |
    \once \overrideHorizontalShift #-0.25 cis,4 e fis gis |
    a4. a8 gis4 fis |
    \once \hide NoteHead b,8 e e4~ e16 e dis cis dis16 e8 dis16 |
    e4
  }
  
  % Tee-tee taa high
  \barNumberCheck #18
  \relative c'' {
    s4 s2 |
    s2 c4.\rest e,8 |
    fis8 gis a4~ a8 a gis4 |
    fis2 e2~ |
    e4. fis8 gis8 a b4~ |
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
    cis b cis dis e2 |
    dis8 b dis e fis2 |
    e8 a~ a16 a gis8~ gis16 gis fis8~ fis16 fis e8~ |
    e16 e dis cis dis e cis dis e2 |
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
  \relative c'' {
    s1 |
    r8 gis fis a gis e fis dis |
    s1 |
    r8 b' e, a gis e fis dis |
    e2 s2 |
    r8 cis' b a gis8 fis16 e fis8 dis |
    e2 s2 |
    r8 e fis16 gis a fis gis8 e fis dis |
    e2 s2 |
    r8 e fis16 gis a b gis8 e fis dis |
    e2 s2 |
    r8 e fis16 gis a fis gis8 e fis dis |
    e2 s2 |
  }
  
  % Scale runs
  \barNumberCheck #59
  \relative c' {
    r16 <e b>8. s4 s2 |
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
  
  % Triple runs
  \barNumberCheck #75
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
      \triplet { a a gis } s4 |
    \tripletDuple { e'2. } s2 |
  }
  
  % Finishing chords
  \barNumberCheck #88
  \relative c {
    r8 <e b' e>4.
      <e, b' e gis b e>2 \arpeggio
      \barLineEnd
  }
  
}


lowVoiceMusic = {
  
  \override NoteHead.color = #darkgreen
  
  % Main theme high
  \barNumberCheck #1
  \relative c {
    s1 * 6 |
    b2 gis4 b |
    a gis fis a |
    e gis fis e |
    b'2 e,4
  }
  
  % Main theme low
  \barNumberCheck #10
  \relative c {
    r4 |
    r4 e cis e~ |
    e dis cis a |
    gis e fis gis |
    a2 gis |
    cis4. b8 a4 gis |
    fis r e fis |
    gis4. a8 b2 |
    e,4
  }
  
  % Tee-tee taa high
  \barNumberCheck #18
  \relative c {
    s4 s4 s4 |
    s1 * 2 |
    b4. b8 cis8 dis e4~ |
    e8 e dis4 e4 dis |
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
    dis2 e |
    b4. b8 cis b cis dis |
    e2 dis4 b |
    s1 * 3 |
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
    e,8[ gis] fis8. r16 e4 b' |
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
  
  % Triple runs
  \barNumberCheck #75
  \relative c {
    \triplet { <b fis'>4 ais8 } \triplet { b4 gis8 }
      \triplet { gis4 b8 } \triplet { a4 b8 } |
    \triplet { e4 dis8 } \triplet { e4 cis8 }
      \triplet { cis4 e8 } \triplet { d4 e8 } |
    \triplet { a,4 cis8 } \triplet { cis4. }
      \triplet { cis4 d8 } \triplet { cis4 a8 } |
    \triplet { <b fis'>4 fis8 } \triplet { <b fis'>4 fis8 }
      \triplet { <b fis'>4 fis8 } \triplet { gis4 <b fis'>8 } |
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
      \triplet { gis gis e } \triplet { e' e d } |
    \triplet { cis cis b } \triplet { a a gis }
      \triplet { cis cis b } \triplet { a a gis } |
    \triplet { a gis a } \triplet { gis a gis }
      \triplet { a gis a } \triplet { gis8 a4 } |
  }
  
  % Finishing chords
  \barNumberCheck #88
  \relative c, {
    e2 s2 |
  }
  
}


upperMiddleVoiceMusic = {
  
  \override NoteHead.color = #darkyellow
  
  % Main theme high
  \barNumberCheck #1
  \relative c' {
    s1 * 5 |
    \once \overrideHorizontalShift #0.4 b4. e8
      cis8 dis
      \once \overrideHorizontalShift #0 e4 |
    \stemDown
    \once \overrideHorizontalShift #0 b2 s2 |
    \stemUp
    s1 |
    gis8 a b cis dis8 cis16 \shiftOff dis <e~ b_~>4 |
    <e b> dis e
    \shiftOn
  }
  
  % Main theme low
  \barNumberCheck #10
  \relative c' {
    s4 |
    s1 * 2 |
    \once \overrideHorizontalShift #0.35 <b e,>2
      cis8 dis \once \overrideHorizontalShift #0 e4~ |
    e8 dis
      \shiftOff cis4 \shiftOn
      \once \overrideHorizontalShift #-0.75 dis2 |
    s2 s4 \stemDown b4 |
    a4 s4 \stemUp b8. e16 dis8 cis |
      \once \overrideHorizontalShift #-0.07
      \once \hide Stem
        b2
      s2 |
    \once \overrideHorizontalShift #0 gis4
  }
  
  % Tee-tee taa high
  \barNumberCheck #18
  \relative c' {
    b4 cis8 dis e4 |
    dis4 cis b2 |
    \stemDown
    s2 b4 e~ |
    e8 e dis4 s2 |
    b2 b4. b8 |
    cis8 dis e4 e8. e16 dis4 |
    e4. dis8 cis8 b cis4 |
    b4. s8 b8\rest e4 dis8~ |
    dis8 cis4 b8~ b4 ais |
    b4 b8 a gis4 fis8 e |
    fis2 e4
    \stemUp
  }
  
  % Tee-tee taa low
  \barNumberCheck #28
  \relative c {
    s4 |
    s1 * 2 |
    s2 fis2 |
    \footnote "*" #'(0 . -4) \markup { "*" \resonatesOn A 5 }
    a4. a8 gis fis gis a |
    b2 cis |
    s2 cis4 b |
    \footnote "*" #'(0 . -4) \markup { }
    a2
  }
  
  % Ascending scale
  \barNumberCheck #35
  \relative c {
    e8 fis gis a |
    b cis dis e <fis b,> dis e cis |
    dis fis~ fis16 cis fis8~ fis16 dis fis8~ fis16 e dis cis |
    dis cis b ais b cis dis b cis b cis dis e fis gis e |
    fis e dis cis \triplet { e8 dis e32 dis cis dis } <e b gis>4
  }
  
  % Tee-tee-tee
  \barNumberCheck #39
  \relative c' {
    <b gis>4 |
    <b fis> <b fis> a8 gis16 fis gis16 b ais8 |
    b4 s4 s2 |
    s2 cis4 cis |
    cis <cis gis> fis,2 |
    gis8 fis gis4 <ais fis>2 |
    fis8 fis fis dis gis4 fis |
  }
  
  % Majestic theme
  \barNumberCheck #46
  \relative c' {
    r8 gis fis a gis e fis dis |
    s8 b'4 s8 b4 s4 |
    r8 b8 fis a gis e fis dis |
    s4. dis'8 e4 s4 |
    r8 b8 fis a gis e fis dis |
    s2 b'4 s4 |
    r8 cis b a gis8 fis16 e fis8 dis |
    s1 |
    r8 e fis16 gis a fis gis8 e fis dis |
    s1 |
    r8 e fis16 gis a b gis8 e fis dis |
    s1 |
    r8 e fis16 gis a fis gis8 e fis dis |
  }
  
  % Scale runs
  \barNumberCheck #59
  \relative c' {
    s16 gis e fis gis a b cis
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
    s1 |
    s8 b4. b4 s4 |
    s1 |
    s8 cis4. cis4 s4 |
    s8 b4. s2 |
    s1 |
  }
  
  % Triple runs
  \barNumberCheck #75
  \relative c' {
    s1 * 11 |
    s2 \triplet { e8 e4 } \triplet { cis8 cis b } |
    \triplet { cis b cis } \triplet { b cis b }
      \triplet { cis b cis } \triplet { b8. cis16 a8 } |
  }
  
  % Finishing chords
  \barNumberCheck #88
  \relative c' {
    s8 a gis fis e2 |
  }
  
}


lowerMiddleVoiceMusic = {
  
  \override NoteHead.color = #darkmagenta
  
  % Main theme high
  \barNumberCheck #1
  \relative c' {
    s1 * 3 |
    \shiftOff
    b2 gis4 b |
    a gis fis2 |
    \once \overrideHorizontalShift #0.3 e4. gis8 fis4 e |
    \shiftOn
    \stemUp
    \overrideBeamedStemLengths #'(3)
    fis8. e16 dis4 \stemDown
    \revertBeamedStemLengths
      \overrideHorizontalShift #0 e4 fis~ |
      \revertHorizontalShift
    \stemUp
    fis8 e \stemDown
      \overrideHorizontalShift #0 e4 <cis fis>4 a |
    b e a gis |
      \revertHorizontalShift
    \stemUp
    fis8 e
      \overrideHorizontalShift #0 fis4 e
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
      \overrideBeamedStemLengths #'(3)
      \once \overrideHorizontalShift #0.3
        cis8. cis16
      \revertBeamedStemLengths
      bis4 |
    \stemUp
    \once \overrideHorizontalShift #0.2 gis4. s8
      \once \overrideHorizontalShift #0 fis8 e
      \once \overrideHorizontalShift #0 e4 |
    \once \overrideHorizontalShift #0 e8. e16 dis4
      \stemDown
      \overrideHorizontalShift #0 e4 a |
      \revertHorizontalShift
    \once \overrideHorizontalShift #-0.07 gis2 fis4. fis8 |
    \once \overrideHorizontalShift #0 e4
  }
  
  % Tee-tee taa high
  \barNumberCheck #18
  \relative c {
    \shiftOff
    r4 r e |
    fis8 gis a4~ a8 a gis4 |
    fis2 e |
    \shiftOn
    \stemUp
    s4 b' a gis |
    fis2 e4 fis |
    \stemDown
    s1 * 5 |
    s2 s4
  }
  
  % Tee-tee taa low
  \barNumberCheck #28
  \relative c {
    s4 |
    s1 * 3 |
    fis4. fis8
      \footnote "†" #'(0 . -2.5) \markup { "†" \resonatesOn E 6 }
      e2 |
    s2 a8 fis a b |
    cis4 b a gis |
    fis2
      \footnote "†" #'(0 . -2.5) \markup { }
      e4
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
    s2 fis4. fis8 |
    e8 cis4. d4. d8 |
    cis4 cis <cis fis,>2 |
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
    r8 gis4 fis8 gis e fis dis |
    s1 |
    r8 a'4 gis8 a fis gis eis |
    s1 * 3 |
  }
  
}


allMusic = {
  \new Staff \with {
    midiInstrument = #"acoustic guitar (nylon)"
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
