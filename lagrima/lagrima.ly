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
      gis4 a b |
      \shiftOff
      fis2. |
      \shiftOn
      gis4 a b |
      \shiftOff
      fis2. |
      \shiftOn
      e'4 dis cis |
      b \shiftOff cis,8[ e fis a] |
      gis4 cis,8 fis b,, <dis' a> |
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
      e4 fis gis |
      \shiftOn
      dis2. |
      \shiftOff
      e4 fis gis |
      \shiftOn
      dis2. |
      \shiftOff
      cis'4 b a |
      b4 cis2 |
      b8 e ais,4 b, |
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
      e8 b' fis b gis b |
      \stemDown
      fis' b, a b b, b' |
      \stemUp
      e, b' fis b gis b |
      \stemDown
      fis' b, a b b, b' |
      \stemUp
      cis e b e a, fis' |
      b, gis' s2 |
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
