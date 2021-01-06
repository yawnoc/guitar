\include "../conway.ily"


initialSignatures = {
  \time 4/4
  \key a \minor
}


guitarOneMusic = {
  
  \globalSettings
  \initialSignatures
  \clef "treble_8"
  
  \relative c' {
    e4 b8 c d4 c8 b |
  }
  
}


guitarTwoMusic = {
  
  \globalSettings
  \initialSignatures
  \clef "treble_8"
  
  R1*8
  
}


guitarThreeMusic = {

  \globalSettings
  \initialSignatures
  \clef "treble_8"

  R1*8
  
}


bassMusic = {

  \globalSettings
  \initialSignatures
  \clef "bass_8"

  R1*8
  
}


allMusic = {
  <<
    \tag #'all
    \tag #'guitar-1
    \new Staff \with { instrumentName = "Guitar 1" }
    << \guitarOneMusic >>
    
    \tag #'all
    \tag #'guitar-2
    \new Staff \with { instrumentName = "Guitar 2" }
    << \guitarTwoMusic >>
    
    \tag #'all
    \tag #'guitar-3
    \new Staff \with { instrumentName = "Guitar 3" }
    << \guitarThreeMusic >>
    
    \tag #'all
    \tag #'bass
    \new Staff \with { instrumentName = "Bass" }
    << \bassMusic >>
  >>
}
