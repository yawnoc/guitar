\include "../conway.ily"


\header {
  title = "Tetris Theme Quartet Arrangement"
  subtitle = "Or, Коробе́йники (Korobeiniki)"
  composer = "Russian Traditional"
  arranger = "Conway"
  tagline = ##f
}


initialSignatures = {
  \tempo "Fast" 4 = 144
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
  
  % Relative major bridge
  \barNumberCheck #56
  \relative c' {
    c8 d e f |
    g2 e |
    f d |
    e c |
    b1 |
    c2. b8 a |
    g4. g8 a4 b |
    c8 d e4 e8 f fis4 |
    g2 g, |
  }
  
  % Relative major theme sharpened
  \barNumberCheck #65
  \relative c' {
    g'4 d8 e f4 e8 d |
    c4 c8 e g4 f8 e |
    d4 d8 e f4 g |
    e4 c c g |
    r8 f'4 a8 c4 b8 a |
    g4. e8 a g f e |
    d4 d8 e f4 g |
    e4 c c
  }
  
  % Theme returning to minor
  \barNumberCheck #72
  \relative c' {
    b8 a |
    g4. g8 a4 b |
    c4 d8 c f4 a, |
    gis4. e8 fis4 gis |
    a8 e c' a a, <a' cis e> a, <a' cis e> |
    d, <a' d f> d, <a' d f> d, <a' d f> d, <a' d f> |
    c, <g' c e> c, <g' c e> c, <g' c e> c, <g' c e> |
    b, <gis' b e> b, <gis' b e> e, <gis' b e> e, <gis' b e> |
    a, <a' c e> a, <a' c e> a, <a' c e> a, <a' c e> |
  }
  
  % Bridge to celebration
  \barNumberCheck #81
  \relative c' {
    a, <a' c e> a, <a' c e> a, <a' c e> a, <a' c e> |
    e <gis b e> e <gis b e> gis, <gis' b e> gis, <gis' b e> |
    a, <a' c e> a, <a' c e> a, <a' c e> a, <a' c e> |
    e, <gis' b e> e, <gis' b e> fis, <gis' b e> gis, <gis' b e> |
    a, <a' c e> a, <a' c e> a, <a' c e> a, <a' c e> |
    e <gis b e> e <gis b e> gis, <gis' b e> gis, <gis' b e> |
    a, <a' c e> a, <a' c e> a, <a' c e> a, <a' c e> |
    e, <gis' b e> e, <gis' b e> e <gis b e> e <gis b e> |
  }
  
  % Celebration (tonic major theme)
  \barNumberCheck #89
    \bar "||"
  \key a \major
  \relative c' {
    <e,, b' e gis b e>8^"strum till end" <e'' b gis>
      <e,, b' e gis b e>8 <e'' b gis>
      <e,, b' e gis b e>8 <e'' b gis> <e,, b' e gis b e>8 <e'' b gis> |
    <a,, e' a cis e> <e'' cis a> <a,, e' a cis e> <e'' cis a>
      <a,, e' a cis e> <e'' cis a> <a,, e' a cis e> <e'' cis a> |
    <e,, b' e gis b e>8 <e'' b gis> <e,, b' e gis b e>8 <e'' b gis>
      <e,, b' e gis b e>8 <e'' b gis> <e,, b' e gis b e>8 <e'' b gis> |
    <a,, e' a cis e> <e'' cis a> <a,, e' a cis e> <e'' cis a>
      <a,, e' a cis g'> <g'' cis, a> <a,, e' a cis g'> <g'' cis, a> |
    <d, a' d fis a d> <d'' a fis> <d,, a' d fis a d> <d'' a fis>
      <d,, a' d f a d> <d'' a f> <d,, a' d f a d> <d'' a f> |
    <a,, e' a cis e a> <a'' e cis> <a,, e' a cis e a> <a'' e cis>
      <fis,, cis' fis a cis fis> <fis'' cis a>
      <fis,, cis' fis ais cis fis> <fis'' cis ais> |
    <b,, fis' b d fis b> <b'' fis d> <b,, fis' b d fis b> <b'' fis d>
      <e,,, b' e gis b e> <e'' b gis> <e,, b' e gis b e> <e'' b gis> |
    <a,, e' a cis e a> <a'' e cis> <a,, e' a cis e a> <a'' e cis>
      <a,, a''> <gis gis''> <g g''> <fis fis''> |
  }
    \bar "||"
  \key a \minor
  \relative c' {
    <f,, c' f a c f> <f'' c a> <f, a c f> <f' c a>
      <f, a c f> <f' c a> <f, a c f> <f' c a> |
    <f, a d f> <f' d a> <f, a d f> <f' d a>
      <f, a d f> <f' d a> <f, a d f> <f' d a> |
    <e, gis b e> <e' b gis> <e, gis b e> <e' b gis>
      <e,, b' e gis b e> <e'' b gis> <e,, b' e gis b e> <e'' b gis> |
    <a,, e' a cis e a> r <e b' e gis b e> r <a e' a cis e a> r r4 |
  }
  \bar "|."
  
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
  
  % Relative major bridge
  \barNumberCheck #57
  \relative c' {
    c,4 c' c, c' |
    g, g' g'8 g, a b |
    c4 c, c'8 e d c |
    b4. d8 g f e d |
    c2 c |
    b b |
    c4 c c2 |
    d1 |
  }
  
  % Relative major theme sharpened
  \barNumberCheck #65
  \relative c' {
    b4 g8 a b2 |
    c2~ c8 e d c |
    b4 b8 c d4 f |
    g2 c4 c, |
    f,8 a c f f, a c f |
    g c, g c, a' e cis' a |
    f4. a8 g4 g |
    c2 c, |
  }
  
  % Theme returning to minor
  \barNumberCheck #73
  \relative c' {
    g'8 d b g f'4 g |
    c,2 a4 f |
    e4 e'2 d4 |
    c4 a a2 |
    r8 f4 a8 c4 b8 a |
    g4. e8 g4 f8 e |
    gis4 gis8 a b4 c |
    a e e2 |
  }
  
  % Bridge to celebration
  \barNumberCheck #81
  \relative c' {
    e4 d c e |
    d c b d |
    c b a c |
    b2 c4 d |
    e4 d c e |
    d c b d |
    c4 c8 d e4 a |
    gis1 |
  }
  
  % Celebration (tonic major theme)
  \barNumberCheck #89
  \key a \major
  \relative c' {
    b4 gis8 a b4 a8 gis |
    e4 e8 a cis2 |
    e2~ e8 e, fis gis |
    a2 e4 cis |
    r8 fis4 a8 d f, e' d |
    cis a e a cis a fis ais |
    b4. a8 gis4 e |
    a4 e' a2 |
  }
  \key a \minor
  \relative c'' {
    r8 c4 c c c8~ |
    c8 d4 d d d8 |
    e4 b e8 e fis gis |
    a4 r a r |
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
  
  % Relative major bridge
  \barNumberCheck #57
  \relative c' {
    c2 c |
    b b |
    c c |
    g1 |
    g'2 e |
    f d |
    e4 g c2 |
    b1 |
  }
  
  % Relative major theme sharpened
  \barNumberCheck #65
  \relative c' {
    <g g'>4 <g g'> <g g'> <b g'> |
    <c g'> c, c' b8 c |
    d2 g, |
    c,8 e g c e, g c bes |
    f8 a4 c8 f4 g8 f |
    e8 g e g e cis a cis |
    d8 f4 c8 b8 c d4 |
    e4 g g2 |
  }
  
  % Theme returning to minor
  \barNumberCheck #73
  \relative c' {
    d2~ d8 c4 d8 |
    e2 a |
    b2. b4 |
    a2 a |
    r8 d,4 f8 a4 g8 f |
    e4. c8 e4 d8 c |
    b4 b8 c d4 e |
    c a a2 |
  }
  
  % Bridge to celebration
  \barNumberCheck #81
  \relative c' {
    c4 b a c |
    b a gis b |
    a e c' e |
    e2 c4 b |
    c4 b a c |
    b a gis b |
    a2 a |
    <e b'>1 |
  }
  
  % Celebration (tonic major theme)
  \barNumberCheck #89
  \key a \major
  \relative c' {
    e4 b8 cis d4 cis8 b |
    a4 a8 cis e4 d8 cis |
    b4 b8 cis d4 e |
    cis4 a a g |
    r8 d'4 fis8 a4 g8 f |
    e4. cis8 fis e d cis |
    b4 b8 cis d4 e |
    cis4 a a r |
  }
  \key a \minor
  \relative c {
    f4 c8 f a4 f |
    d'4 a8 d f f e d |
    e2~ e8 d c b |
    a4 r a r |
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
  
  % Relative major bridge
  \barNumberCheck #57
  \relative c {
    c,8 g' c, g' c, g' c, g' |
    g,8 g' g, g' g, g' g, g' |
    c,8 g' c, g' c, g' c, g' |
    g,8 g' g, g' b, g' b, g' |
    c,8 g' c, g' c, g' c, g' |
    g,8 g' g, g' g, g' g, g' |
    c,8 g' c, g' c, g' c, g' |
    g,8 g' g, g' b, g' b, g' |
  }
  
  % Relative major theme sharpened
  \barNumberCheck #65
  \relative c {
    g,8 g' g, g' g, g' g, g' |
    c,8 c' c, c' c, c' c, c' |
    b,8 g' b, g' g, g' g, g' |
    c,8 c' c, c' c, bes' a g |
    f8 f, r f r f'16 f c'8 a |
    e8 c' r c a, cis d e |
    f,8 f' f, f' g, g' a, b |
    c8 g' c, g' c,4
  }
  
  % Theme returning to minor
  \barNumberCheck #72
  \relative c {
    b,8 a |
    g8 g' g, g' g, f' e d |
    c c' d, e f c' f, c' |
    e, b' e, b' e,, e' e, e' |
    a, a' a, a' a, a' b cis |
    d8 d, r d r d16 d a'8 f |
    c8 c' r c r c,16 cis d8 dis |
    r8 b' r b, r e, r gis |
    a8 e' a, e' a,2 |
  }
  
  % Bridge to celebration
  \barNumberCheck #81
  \relative c {
    a,8 e' a, e' a, e' a, e' |
    gis,8 e' gis, e' gis, e' gis, e' |
    a,8 e' a, e' a, e' a, e' |
    e,8 e' e, e' fis, e' gis, e' |
    a,8 e' a, e' a, e' a, e' |
    gis,8 e' gis, e' gis, e' gis, e' |
    a,8 e' a, e' a, e' a, e' |
    gis,8 e' gis, e' gis, e' gis, e' |
  }
  
  % Celebration (tonic major theme)
  \barNumberCheck #89
  \key a \major
  \relative c, {
    e,8 e' e, e' e, e' e, e' |
    a,8 a' a, a' a, a' a, a' |
    gis,8 gis' gis, gis' e, e' e, e' |
    a,8 a' a, a' a, a' b cis |
    d8 d, r d r d16 d a'8 fis |
    cis8 a' r a fis cis fis, cis' |
    b4 b8 b b e, fis gis |
    a8 e' a, e' a, gis' g fis |
  }
  \key a \minor
  \relative c {
    f, c' f, c' f, c' f, c' |
    d, d' d, d' d, d' d, d' |
    gis,, gis' gis, gis' e, e' e, e' |
    a, a' e, e' a,4 r |
  }
  
}


allMusic = {
  <<
    \tag #'all
    \tag #'guitar-1
    \new Staff \with {
      instrumentName = "Guitar 1"
      shortInstrumentName = "1"
      midiInstrument = #"acoustic guitar (nylon)"
    }
    << \guitarOneMusic >>
    
    \tag #'all
    \tag #'guitar-2
    \new Staff \with {
      instrumentName = "Guitar 2"
      shortInstrumentName = "2"
      midiInstrument = #"acoustic guitar (nylon)"
    }
    << \guitarTwoMusic >>
    
    \tag #'all
    \tag #'guitar-3
    \new Staff \with {
      instrumentName = "Guitar 3"
      shortInstrumentName = "3"
      midiInstrument = #"acoustic guitar (nylon)"
    }
    << \guitarThreeMusic >>
    
    \tag #'all
    \tag #'bass
    \new Staff \with {
      instrumentName = "Bass"
      shortInstrumentName = "B"
      midiInstrument = #"electric bass (pick)"
    }
    << \bassMusic >>
  >>
}
