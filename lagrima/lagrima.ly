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
}


highVoiceMusic = {
  
  \globalSettings
  \initialSignatures
  
  % Major section
  \barNumberCheck #1
  \repeat volta 2 {
    \relative c'' {
      gis4 a b |
      fis2. |
      gis4 a b |
      fis2. |
      e'4 dis cis |
      b cis,8 e fis a |
      gis4 cis,8 fis b,, <dis' a> |
      <e gis,>2 r4 |
    }
  }
  
  % Minor section
  \barNumberCheck #9
  \key e \minor
  \repeat volta 2 {
    \relative c' {
      <g' b,>8 c b e, <fis dis a> g |
      e2. |
      <b g>8 e' a,, c' fis,, a' |
      <fis dis>2 b,8 fis' |
      g4 a b |
      d8 c b a g fis |
      e4 fis b,8 a |
      <g e'>2 r4 |
    }
  }
  
}


lowVoiceMusic = {
  
  % Major section
  \barNumberCheck #1
  \repeat volta 2 {
    \relative c {
      e4 fis gis |
      dis2. |
      e4 fis gis |
      dis2. |
      cis'4 b a |
      b8 gis' cis,2 |
      b8 e ais,4 b, |
      e4 e,2 |
    }
  }
  
  % Minor section
  \barNumberCheck #9
  \repeat volta 2 {
    \relative c, {
      e2 b'4 |
      e,2. |
      e4 a' fis |
      b,2. |
      e4 fis g |
      a,2. |
      e''8 <b g> fis' <c a> b, dis |
      e4 e,2 |
    }
  }
  
}


allMusic = {
  \initialSignatures
  <<
    << \highVoiceMusic >>
      \\
    << \lowVoiceMusic >>
  >>
}


\score {
  \allMusic
}
