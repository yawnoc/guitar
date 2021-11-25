\version "2.18.2"


\include "../conway.ily"


\header {
  title = "El Vito"
  composer = "Spanish Traditional"
  arranger = "Conway"
}


initialSignatures = {
  \clef "treble_8"
  \key a \minor
  \time 3/8
}


highVoiceMusic = {
  
  \globalSettings
  
  % Main theme high
  \partial 4
  \relative c'' {
    e16 e e e |
    e8 b16 c d b |
    c8 e16 e e e |
    e8 d16 c b a |
    gis8
  }
  
  % Main theme low
  \barNumberCheck #4
  \relative c' {
    e16 e e e |
    e8 b16 c d b |
    c8 e16 e e e |
    e8 d16 c b a |
    gis8
  }
  
  % Scale run low
  \barNumberCheck #8
  \relative c {
    e16 fis gis a |
    b ais b c d b |
    c b a b c d |
    f e d c b a |
    gis8
  }
  
  % Scale run high
  \barNumberCheck #12
  \relative c' {
    e16 fis gis a |
    b ais b c d b |
    c b a b c d |
    f e d c b a |
    gis8
  }
  
  % Strummed main theme high
  \barNumberCheck #16
  \relative c' {
    <e b gis e b e,>16
      <e b gis e b e,>
      <e b gis e b e,>
      <e b gis e b e,> |
    <e b gis e b e,>8 b16 c d b |
    c8
      <e c a e a,>16
      <e c a e a,>
      <e c a e a,>
      <e c a e a,>
    <e c a e a,>8 d16 c b a |
    gis8
  }
  
  % Strummed main theme low
  \barNumberCheck #20
  \relative c' {
    <e b gis e b e,>16
      <e b gis e b e,>
      <e b gis e b e,>
      <e b gis e b e,> |
    <e b gis e b e,>8 b,16 c d b |
    c8
      <e' c a e a,>16
      <e c a e a,>
      <e c a e a,>
      <e c a e a,>
    <e c a e a,>8 d,16 c b a |
    gis8
  }
  
  % Strummed interlude
  \barNumberCheck #24
  \relative c' {
    <e b gis e b e,>16
      <e b gis e b e,>
      <e b gis e b e,>
      <e b gis e b e,> |
    <e b a f c e,>
      <e b a f c e,>
      <e b a f c e,>
      <e b a f c e,>
      <e b a f c e,>
      <e b a f c e,> |
    <e b gis e b e,>
      <e b gis e b e,>
      <e b gis e b e,>
      <e b gis e b e,>
      <e b gis e b e,>
      <e b gis e b e,> |
    <e b a f c e,>
      <e b a f c e,>
      <e b a f c e,>
      <e b a f c e,>
      <e b a f c e,>
      <e b a f c e,> |
    <e b gis e b e,>8
      <e b gis e b e,>16
      <e b gis e b e,>
      <e b gis e b e,>8 |
    <e b gis e b e,>8
      \bar "||"
  }
  
  % Lyrical theme high
  \barNumberCheck #29
  \relative c' {
    e8 e |
    e'4 e8 |
    e4 d8 |
    d4 c8~ |
    c b c |
    e b4 |
    c4 a8 |
    gis4 e8~ |
    e
  }
  
  % Lyrical theme low
  \barNumberCheck #37
  \relative c' {
    e8 e |
    e4 e8 |
    e4 d8 |
    d4 c8~ |
    c b c |
    e b4 |
    c4 a8 |
    gis4 e8~ |
    <e gis b e>
  }
  
  % Bull-fighting theme
  \barNumberCheck 45
  \relative c' {
    e8 gis |
    b4 gis8~ |
    gis8 a b |
    \grace { a16( b } a4) gis8~ |
    gis8 a b |
    c8 a4 |
    b8 g4 |
    f4 e8~ |
    e8
  }
  
  % Bull-fighting theme again
  \barNumberCheck 53
  \relative c' {
    e8 gis |
    b4 gis8~ |
    gis8 a b |
    \grace { a16( b } a4) gis8~ |
    gis8 a b |
    c8 a4 |
    b8 g4 |
    f4 e8~ |
    e8
  }
  
  % Returning strummed interlude
  \barNumberCheck 61
  \relative c' {
    <f b, a d,>16
      <f b, a d,>
      <f b, a d,>
      <f b, a d,> |
    <e b gis e b e,>8
      <f b, a d,>
      <e b gis e b e,> |
    r8
      <f b, a d,>16
      <f b, a d,>
      <f b, a d,>
      <f b, a d,> |
    <e b gis e b e,>8
      <f b, a d,>
      <e b gis e b e,> |
    r8
      <f b, a d,>16
      <f b, a d,>
      <f b, a d,>
      <f b, a d,> |
    <e b gis e b e,>16
      <e b gis e b e,>
      <f b, a d,>
      <f b, a d,>
      <f b, a d,>
      <f b, a d,> |
    <e b gis e b e,>16
      <e b gis e b e,>
      <f b, a d,>
      <f b, a d,>
      <f b, a d,>
      <f b, a d,> |
    <e b gis e b e,>8
      <e b gis e b e,>16
      <e b gis e b e,>
      <e b gis e b e,>8 |
    <e b gis e b e,>8
      \bar "||"
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
