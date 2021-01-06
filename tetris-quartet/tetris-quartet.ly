\include "../conway.ily"


\header {
  title = "Tetris Theme Quartet Arrangement"
  subtitle = "Or, Коробе́йники (Korobeiniki)"
  composer = "Russian Traditional"
  arranger = "Conway"
  tagline = ##f
}


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
  
  % Theme in Guitar 3
  \barNumberCheck #17
  \relative c'' {
    b4 gis8 a b4 a8 gis |
    a8 e c e a4 a |
    gis4 gis8 a b d c b |
    a2 c8 a b c |
    d4. a8 d4 c8 a |
    g4 e c' b8 a |
    gis4. e8 fis4 gis |
    a2 a4
  }
  
  % Altered theme in Guitar 2
  \barNumberCheck #24
  \relative c' {
    a4 |
    gis4 gis e e |
    a, a a' a |
    e' e gis, gis |
    a2 cis8 a b cis |
    d4 a'~ a8 g f e |
    c8 e g2 f8 e |
    d4. c8 b e, fis gis |
    a2 a |
  }
  
  % Bridge
  \barNumberCheck #33
  \relative c' {
    e2 c |
    b d |
    c a |
    gis1 |
    a,8 a' a, a' a, a' a, a' |
    e, e'' b gis e e' b gis |
    a, <e' a> a, <e' a> a, <a' c e> a, <a' c e> |
    e, <gis' b e> e <gis b e> e, <gis' b e> e <gis b e> |
  }
  
  % Theme becoming major
  \barNumberCheck #41
  \relative c {
     e, <gis' b e> e <gis b e> e, <gis' b e> e <gis b e> |
     a, <a' c e> a, <a' c e> a, <a' c e> a, <a' c e> |
     e, <gis' b e> e <gis b e> e, <gis' b e> e <gis b e> |
     a, <a' c e> a, <a' c e> a, <a' cis e> e <a cis e> |
     d, <a' d f> d, <a' d f> d, <a' d f> d, <a' d f> |
     c, <g' c e> c, <g' c e> c, <g' c e> c, <g' c e> |
     g, <g' b g'> g, <g' b g'> g, <g' b g'> g, <g' b g'> |
     c, <e g c> c <e g c> <c e g c e>2 |
  }
  
  % Relative major theme
  \barNumberCheck #49
  \relative c' {
    g'4 d8 e f4 e8 d |
    c4 c8 e g4 f8 e |
    d4 d8 e f4 g |
    e4 c c g |
    r8 f'4 a8 c4 b8 a |
    g4. e8 a g f e |
    d4 d8 e f4 g |
    e4 c
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
  
  % Theme in Guitar 3
  \barNumberCheck #16
  \relative c' {
    c8 a |
    gis8 b e e, gis b e e, |
    a8 c e e, a c e e, |
    gis8 b e e, gis b e e, |
    a8 c e c e4 e |
    f8 d a d, f' d a d, |
    e'8 c g c e4 e |
    r8 e4 d8 c4 b |
    a8 c e c a2 |
  }
  
  % Altered theme in Guitar 2
  \barNumberCheck #25
  \relative c' {
    e4. b8 gis4 d' |
    c4 c8 e a4 a |
    e4 b8 c d4 c8 b |
    a4 c8 a~ a e'4 cis8 |
    d8 d d f a a g f |
    e e e c e e d c |
    b b b c d gis, a b |
    c e a, c e c a e |
  }
  
  % Bridge
  \barNumberCheck #33
  \relative c' {
    a,4 a' a, a' |
    e, e' e'8 e, fis gis |
    a4 a, a'8 c b a |
    gis4. b8 e d c b |
    a2 a |
    gis gis |
    a4 a a2 |
    d1 |
  }
  
  % Theme becoming major
  \barNumberCheck #41
  \relative c' {
    b4 gis8 a b4 a8 gis |
    e4 e8 a c4 b8 a |
    gis4 gis8 a b4 b |
    a4 e e2 |
    r8 f4 a8 c4 b8 a |
    g4. e8 g4 f8 e |
    d4 d8 e f4 g |
    e4 c c'4.
  }
  
  % Relative major theme
  \barNumberCheck #48
  \relative c' {
    d8 |
    b4 g8 a b2 |
    c2~ c8 e d c |
    b4 b8 c d4 f |
    g2 c4 c, |
    f,8 a c f f, a c f |
    g c, g c, a' e c' a |
    f4. a8 g4 g |
    c2 c, |
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
  
  % Theme in Guitar 3
  \barNumberCheck #16
  \relative c {
    a4 |
  }
  \relative c' {
    e4 b8 c d4 c8 b |
    a4 a8 c e4 d8 c |
    b4 b8 c d4 e |
    c a a r |
    r8 a4 d8 f4 e8 d |
    c4. e,8 e' c d c |
    e4. gis,8 a4 b |
    c2
  }
  
  % Altered theme in Guitar 2
  \barNumberCheck #24
  \relative c' {
    c8 b a c |
    b8 c d4 e e |
    e8 a e a e a e a |
    e gis e gis e gis e gis |
    a8 c, e4 a8 cis, e4 |
    d8 d, r d r d16 d a'8 f |
    c8 c' r c r c,16 cis d8 dis |
    e4 e e, e |
    a2 a |
  }
  
  % Bridge
  \barNumberCheck 33
  \relative c' {
    a2 a |
    gis gis |
    a a |
    e1 |
    e'2 c |
    d b |
    c4 e a2 |
    gis1 |
  }
  
  % Theme becoming major
  \barNumberCheck #41
  \relative c' {
    e4 b8 c d4 c8 b |
    a4 a8 c e4 d8 c |
    b4 b8 c d4 e |
    c a a2 |
    r8 d4 f8 a4 g8 f |
    e4. c8 e4 d8 c |
    b4 b8 c d4 e |
    c g c,8 e g4 |
  }
  
  % Relative major theme
  \barNumberCheck #49
  \relative c' {
    <g g'>4 <g g'> <g g'> <b g'> |
    <c g'> c, c' b8 c |
    d2 g, |
    c,8 e g c e, g c bes |
    f8 a4 c8 f4 g8 f |
    e8 g e g e c a c |
    d8 f4 c8 b8 c d4 |
    e4 g g2 |
  }
  
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
  
  % Theme in Guitar 3
  \barNumberCheck #17
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
  
  % Altered theme in Guitar 2
  \barNumberCheck #25
  \relative c, {
    e,8 e' e, e' e, e' e, e' |
    a,8 a' a, a' a, a' a, a' |
    gis,8 gis' gis, gis' e, e' e, e' |
    a,8 a' a, a' a, a' b cis |
    d8 d, d d d d d d |
    c8 c' c, c' c, c16 cis d8 dis |
    r8 b' r b, r e, r gis |
    a8 e' a, e' a,2 |
  }
  
  % Bridge
  \barNumberCheck #33
  \relative c {
    a,8 e' a, e' a, e' a, e' |
    gis,8 e' gis, e' gis, e' gis, e' |
    a,8 e' a, e' a, e' a, e' |
    gis,8 e' gis, e' gis, e' gis, e' |
    a,8 e' a, e' a, e' a, e' |
    gis,8 e' gis, e' gis, e' gis, e' |
    a,8 e' a, e' a, e' a, e' |
    gis,8 e' gis, e' gis, e' gis, e' |
  }
  
  % Theme becoming major
  \barNumberCheck #41
  \relative c, {
    e,8 e' e, e' e, e' e, e' |
    a,8 a' a, a' a, a' a, a' |
    gis,8 gis' gis, gis' e, e' e, e' |
    a,8 a' a, a' a, a' b cis |
    d8 d, r d r d16 d a'8 f |
    c8 c' r c r c, b a |
    g8 g' g, g' g, g' a b |
    c, c' c, c' c,2 |
  }
  
  % Relative major theme
  \barNumberCheck #49
  \relative c {
    g,8 g' g, g' g, g' g, g' |
    c,8 c' c, c' c, c' c, c' |
    b,8 g' b, g' g, g' g, g' |
    c,8 c' c, c' c, bes' a g |
    f8 f, r f r f'16 f c'8 a |
    e8 c' r c a, c d e |
    f,8 f' f, f' g, g' a, b |
    c8 g' c, g' c, g' c, g' |
  }
  
}


allMusic = {
  <<
    \tag #'all
    \tag #'guitar-1
    \new Staff \with {
      instrumentName = "Guitar 1"
      shortInstrumentName = "1"
    }
    << \guitarOneMusic >>
    
    \tag #'all
    \tag #'guitar-2
    \new Staff \with {
      instrumentName = "Guitar 2"
      shortInstrumentName = "2"
    }
    << \guitarTwoMusic >>
    
    \tag #'all
    \tag #'guitar-3
    \new Staff \with {
      instrumentName = "Guitar 3"
      shortInstrumentName = "3"
    }
    << \guitarThreeMusic >>
    
    \tag #'all
    \tag #'bass
    \new Staff \with {
      instrumentName = "Bass"
      shortInstrumentName = "B"
    }
    << \bassMusic >>
  >>
}
