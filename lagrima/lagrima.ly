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
      \shiftOn
      gis4-4 a-4 b-4 |
      \shiftOff
      fis2.-4 |
      \shiftOn
      gis4 a b |
      \shiftOff
      fis2. |
      \shiftOn
      e'4-4 dis-4 cis-4 |
      b \shiftOff cis,8[ e-0 fis-4 a-2] |
      gis4-4 cis,8 fis b,, <dis'-4 a> |
      <e gis,>2 r4 |
    }
  }
  
  % Minor section
  \barNumberCheck #9
  \key e \minor
  \repeat volta 2 {
    \relative c' {
      <g' b,>8 \glissando c b e, <fis dis a> g |
      e2. |
      <b g>8 e' a,, c' fis,, a' |
      <fis dis>2 s4 |
      \shiftOn
      g4 a b |
      \shiftOff
      d8 c b a g fis |
      e4 fis b,8 a |
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
      e4-1 fis-2 gis-2 |
      \shiftOn
      dis2.-1 |
      \shiftOff
      e4 fis gis |
      \shiftOn
      dis2. |
      \shiftOff
      cis'4-3 b a |
      b4-3 cis2-3 |
      b8-0 e-0 ais,4-2 b, |
      e4 e,2 |
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
      e4 a' fis |
      \shiftOn
      b,2 s4 |
      \shiftOff
      e4 fis g |
      a,2. |
      e''8 <b g> fis' <c a> b, dis |
      e4 e,2 |
    }
  }
  
}


middleVoiceMusic = {
  
  \globalSettings
  
  % Major section
  \barNumberCheck #1
  \repeat volta 2 {
    \relative c {
      \shiftOff
      e8 b'-0 fis b-0 gis b-0 |
      \stemDown
      fis' b,-0 a-3 b-0 b,-2 b'-0 |
      \stemUp
      e, b' fis b gis b |
      \stemDown
      fis' b, a b b, b' |
      \stemUp
      cis e b e a, fis' |
      b, gis'-4 s2 |
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
      e8 <c a> <b g> <a fis> <g e> <a fis> |
      s2. |
      dis8 b c b b fis' |
      \stemUp
      e, b' fis b g b |
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
