\include "../conway.ily"


initialSignatures = {
  \time 4/4
  \key a \minor
}


guitarOneMusic = {
  
  \globalSettings
  \initialSignatures
  \clef "treble_8"
  
  % Theme in Guitar 1
  \barNumberCheck #1
  \relative c' {
    e4 b8 c d4 c8 b |
    a4 a8 c e4 d8 c |
    b4 b8 c d4 e |
    c a a r |
    r8 d4 f8 a4 g8 f |
    e4. c8 e4 d8 c |
    b4 b8 c d4 e |
    c a a r |
  }
  
  % Theme in Guitar 2
  \barNumberCheck #9
  \relative c' {
    gis4. e8 fis4 gis |
    a2~ a8 c b a |
    gis4. a8 b d c b |
    a4 e a, r |
    f'8 a d4 f,8 a d4 |
    e,8 g c4 g8 c e4 |
    e,8 gis b4 e,8 b' a gis |
    a8 c e c a'4 a, |
  }
  
}


guitarTwoMusic = {
  
  \globalSettings
  \initialSignatures
  \clef "treble_8"
  
  % Theme in Guitar 1
  \barNumberCheck #1
  R1*8 |
  
  % Theme in Guitar 2
  \barNumberCheck #9
  \relative c' {
    e4 b8 c d4 c8 b |
    a4 a8 c e4 d8 c |
    b4 b8 c d4 e |
    c a a r |
    r8 f4 a8 c4 b8 a |
    g4. e8 c'4 b8 a |
    gis4 gis8 a b4 c |
    a2 a4
  }
  
}


guitarThreeMusic = {

  \globalSettings
  \initialSignatures
  \clef "treble_8"

  % Theme in Guitar 1
  \barNumberCheck #1
  R1*8 |
  
  % Theme in Guitar 2
  \barNumberCheck #9
  R1*7 |
  r2 r4
  
}


bassMusic = {

  \globalSettings
  \initialSignatures
  \clef "bass_8"

  % Theme in Guitar 1
  \barNumberCheck #1
  R1*8 |
  
  % Theme in Guitar 2
  \barNumberCheck #9
  \relative c, {
    e,8 e' e, e' e, e' e, e' |
    a,8 a' a, a' a, a' a, a' |
    gis,8 gis' gis, gis' e, e' e, e' |
    a,8 a' a, a' a, a' b c |
    d8 d, r d r d16 d a'8 f |
    c8 c' r c r c,16 cis d8 dis |
    r8 b' r b, r e, r gis |
    a8 e' a, e' a,2 |
  }
  
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
