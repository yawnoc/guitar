\version "2.18.2"


\include "../conway.ily"


\header {
  title = "Lágrima"
  subtitle = "or, Teardrop"
  composer = "Francisco Tárrega"
  arranger = "Conway"
}


initialSignatures = {
  \tempo "Andante"
  \clef "treble_8"
  \key e \major
  \time 3/4
  \set Timing.beamExceptions = #'()
}


highVoiceMusic = {
  
  \globalSettings
  
  % Major section
  \barNumberCheck #1
  \repeat volta 2 {
    \relative c'' {
      \fingeringAleft
      \shiftOn
      <gis-4>4 <a-4> <b-4> |
      \shiftOff
      <fis-4>2. |
      \shiftOn
      gis4 a b |
      \shiftOff
      fis2. |
      \shiftOn
      <e'-4>4 <dis-4> <cis-4> |
      b \shiftOff cis,8[ <e-0> <fis-4> <a-2>] |
      <gis-4>4 cis,8 fis b,, \fingeringAright <dis'-4 a> |
      \fingeringAleft
      <e-0 gis,-1>2 r4 |
    }
  }
  
  % Minor section
  \barNumberCheck #9
  \key e \minor
  \repeat volta 2 {
    \relative c' {
      \fingeringAleft
      <g'-2 b,>8 \glissando \fingeringAright <c-2>
        <b-1> <e,-0>
        <fis dis a> <g-2> |
      e2. |
      \fingeringAleft
      <b-0 g-0>8 <e'-4> a,, <c'-2> fis,, <a'-4> |
      <fis dis-2>2 s4 |
      \shiftOn
      <g-3>4 <a-3> <b-4> |
      \shiftOff
      <d-4>8 <c-2> <b-1> <a-4> <g-2> <fis-1> |
      <e-0>4 <fis-4> <b,-0>8 \fingeringAright <a-3> |
      <g e'>2 r4 |
    }
  }
  
}


lowVoiceMusic = {
  
  \globalSettings
  
  % Major section
  \barNumberCheck #1
  \repeat volta 2 {
    \relative c {
      \fingeringAleft
      <e-1>4 <fis-2> <gis-2> |
      \shiftOn
      <dis-1>2. |
      \shiftOff
      e4 fis gis |
      \shiftOn
      dis2. |
      \shiftOff
      <cis'-3>4 b a |
      <b-3>4 <cis-3>2 |
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
      e,2. |
      \shiftOff
      \fingeringAleft
      e4 <a'-1> <fis-3> |
      \shiftOn
      b,2 s4 |
      \shiftOff
      <e-1>4 <fis-1> <g-1> |
      a,2. |
      e''8 <b-0 g-0> fis' <c-1 a-3> <b,-2> \fingeringAright <dis-1> |
      \fingeringAleft
      <e-2>4 e,2 |
    }
  }
  
}


middleVoiceMusic = {
  
  \globalSettings
  
  % Major section
  \barNumberCheck #1
  \repeat volta 2 {
    \relative c {
      \fingeringAleft
      \shiftOff
      e8 <b'-0> fis <b-0> gis <b-0> |
      \stemDown
      fis' <b,-0> <a-3> <b-0> <b,-2> <b'-0> |
      \stemUp
      e, b' fis b gis b |
      \stemDown
      fis' b, a b b, b' |
      \stemUp
      cis e b e a, fis' |
      b, <gis'-4> s2 |
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
      dis8 <b-3> <c-4> <b-3> <b-0> <fis'-2> |
      \stemUp
      e, <b'-0> fis <b-0> g <b-0> |
      s2. |
      s2. |
      s2. |
    }
  }
  
}


allMusic = {
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
