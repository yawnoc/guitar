\version "2.22.0"


\include "../conway.ily"


\header {
  title = "Lágrima"
  subtitle = "or, Teardrop"
  composer = "Francisco Tárrega"
  arranger = "Conway (edits)"
}


\paper {
  systems-per-page = 5
}


initialSignatures = {
  \tempo "Andante"
  \clef "treble_8"
  \key e \major
  \time 3/4
  \set Timing.beamExceptions = #'()
}


highVoiceMusic = {
  
  \colourOne
  
  % Major section
  \barNumberCheck #1
  \repeat volta 2 {
    \relative c'' {
      \fingeringAleft
      \shiftOn
      \overrideHorizontalShift #0
      <gis-4>4 <a-4> <b-4> |
      <fis-4>2. |
      gis4 a b |
      fis2. |
      \overrideHorizontalShift #-0.4
      <e'-4>4 <dis-4> <cis-4> |
      \stringNumbersAbove
      b
        \shiftOff
        \revertHorizontalShift
        cis,8[ <e-0> <fis-4 \3> <a-2 \2>] |
      <gis-4 \3>4
        \barreSpan ⅚CII { cis,8 fis b,, \fingeringAright <dis'-4 a> } |
      \fingeringAleft
      <e-0 gis,-1>2 r4 | \fine
    }
  }
  
  % Minor section
  \barNumberCheck #9
  \key e \minor
  \repeat volta 2 {
    \relative c' {
      \fingeringAleft
      <g'-2 b,>8 \glissando
        \once \override Fingering.self-alignment-Y = -1
        <c-2> <b-1> <e,-0>
        \fingeringAright
        \barreSpan ⅚CII { <fis dis-3 a> <g-2> } |
      e2. |
      \stringNumbersAbove
      \fingeringAleft
      <b-0 g-0>8 <e'-4> a,, <c'-2 \1> fis,, <a'-4 \2> |
      <fis dis-2>2 s4 |
      \shiftOn
      \overrideHorizontalShift #0
      <g-3>4 <a-3> <b-4> |
      \shiftOff
      \revertHorizontalShift
      <d-4>8 <c-2> <b-1> <a-4 \2> <g-2> <fis-1> |
      <e-0>4 <fis-4> <b,-0>8 \fingeringAright <a-3> |
      <g e'>2 r4 | \dcAlFine
    }
  }
  
}


lowVoiceMusic = {
  
  \colourTwo
  
  % Major section
  \barNumberCheck #1
  \repeat volta 2 {
    \relative c {
      \fingeringAleft
      <e-1>4 <fis-2> <gis-2> |
      <dis-1>2. |
      e4 fis gis |
      dis2. |
      <cis'-3>4 b a |
      \stringNumbersBelow
      <b-3>4 <cis-3 \4>2 |
      <b-0>8 <e-0> \fingeringAright <ais,-2>4 b, |
      \fingeringAleft
      <e-2>4 e,2 |
    }
  }
  
  % Minor section
  \barNumberCheck #9
  \repeat volta 2 {
    \relative c, {
      e2 b'4 |
      \shiftOn
      \overrideHorizontalShift #0
      e,2. |
      \shiftOff
      \revertHorizontalShift
      \fingeringAleft
      e4 <a'-1 \4> <fis-3 \5> |
      \shiftOn
      \overrideHorizontalShift #0
      b,2 s4 |
      \shiftOff
      \revertHorizontalShift
      <e-1>4 <fis-1> <g-1> |
      a,2. |
      e''8 <b-0 g-0> fis' <c-1 a-3> <b,-2> \fingeringAright <dis-1> |
      \fingeringAleft
      <e-2>4 e,2 |
    }
  }
  
}


middleVoiceMusic = {
  
  \colourThree
  
  % Major section
  \barNumberCheck #1
  \repeat volta 2 {
    \relative c {
      \fingeringAleft
      \shiftOff
      e8 <b'-0> fis <b-0> gis <b-0> |
      dis, <b'-0> <a-3> <b-0> <b,-2> <b'-0> |
      e, b' fis b gis b |
      dis, b' a b b, b' |
      \barreSpan ⅔CIX {
        \once \hide NoteHead cis e
        \once \hide NoteHead b e
      }
        \barreSpan ⅔CVII { a, fis' |
      b, <gis'-4> } s2 |
      s2. |
      s2. |
    }
  }
  
  % Minor section
  \barNumberCheck #9
  \repeat volta 2 {
    \relative c' {
      s2. |
      \stemDown
      \fingeringAleft
      e8 <c-1 a-2> <b-0 g-0> <a-2 fis-4> <g-0 e-1> <a-2 fis-4> |
      s2. |
      \barreSpan CVII { dis8 <b-3> <c-4> <b-3> } <b-0> <fis'-2> |
      \stemUp
      e, <b'-0> fis <b-0> g <b-0> |
      s2. |
      s2. |
      s2. |
    }
  }
  
}


allMusic = {
  \globalSettings
  \initialSignatures
  <<
    << \highVoiceMusic >>
      \\
    << \lowVoiceMusic >>
      \\
    << \middleVoiceMusic >>
  >>
}


\score {
  \allMusic
}
