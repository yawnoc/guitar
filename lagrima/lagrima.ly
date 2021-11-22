\version "2.18.2"

\include "../conway.ily"


\header {
  title = "Lágrima"
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
      dis4 cis,8 fis b,, <dis' a> |
      <e gis,>2 r4 |
    }
  }
  
}


allMusic = {
  \initialSignatures
  <<
    << \highVoiceMusic >>
  >>
}


\score {
  \allMusic
}
