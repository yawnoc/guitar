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
  
  % Main phrase high
  \partial 4
  \relative c'' {
    e16 e e e |
    e8 b16 c d b |
    c8 e16 e e e |
    e8 d16 c b a |
    gis8
  }
  
  % Main phrase low
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
  
  % Strummed main phrase high
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
  
  % Strummed main phrase low
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
