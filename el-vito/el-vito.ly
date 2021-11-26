\version "2.18.2"


\include "../conway.ily"


\header {
  title = "El Vito"
  composer = "Spanish Traditional"
  arranger = "Conway"
}


\paper {
  systems-per-page = 7
  ragged-last = ##t
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
    e16[ e e e] |
    e8 b16 c d b |
    c8 e16 e e e |
    e8 d16 c b a |
    gis8
  }
  
  % Scale run low
  \barNumberCheck #8
  \relative c {
    e16[ fis gis a] |
    b ais b c d b |
    c b a b c d |
    f e d c b a |
    gis8
  }
  
  % Scale run high
  \barNumberCheck #12
  \relative c' {
    e16[ fis gis a] |
    b ais b c d b |
    c b a b c d |
    f e d c b a |
    gis8
  }
  
  % Strummed main theme high
  \barNumberCheck #16
  \relative c' {
    \arpeggioArrowUp
    <e b gis e b e,>16[ \arpeggio
      \arpeggioArrowDown
      <e b gis e b e,> \arpeggio
      \arpeggioArrowUp
      <e b gis e b e,> \arpeggio
      \arpeggioArrowDown
      <e b gis e b e,>] \arpeggio|
      \arpeggioArrowUp
    <e b gis e b e,>8 \arpeggio b16[ c d b] |
    c8
      \arpeggioArrowUp
      <e c a e a,>16[ \arpeggio
      \arpeggioArrowDown
      <e c a e a,> \arpeggio
      \arpeggioArrowUp
      <e c a e a,> \arpeggio
      \arpeggioArrowDown
      <e c a e a,>] \arpeggio
    \arpeggioArrowUp
    <e c a e a,>8 \arpeggio d16[ c b a] |
    gis8
  }
  
  % Strummed main theme low
  \barNumberCheck #20
  \relative c' {
    \arpeggioArrowUp
    <e b gis e b e,>16[ \arpeggio
      \arpeggioArrowDown
      <e b gis e b e,> \arpeggio
      \arpeggioArrowUp
      <e b gis e b e,> \arpeggio
      \arpeggioArrowDown
      <e b gis e b e,>] \arpeggio |
    \arpeggioArrowUp
    <e b gis e b e,>8 \arpeggio b,16[ c d b] |
    c8
      \arpeggioArrowUp
      <e' c a e a,>16[ \arpeggio
      \arpeggioArrowDown
      <e c a e a,> \arpeggio
      \arpeggioArrowUp
      <e c a e a,> \arpeggio
      \arpeggioArrowDown
      <e c a e a,>] \arpeggio
    \arpeggioArrowUp
    <e c a e a,>8 \arpeggio d,16[ c b a] |
    gis8
  }
  
  % Strummed interlude
  \barNumberCheck #24
  \relative c' {
    \arpeggioArrowUp
    <e b gis e b e,>16[ \arpeggio
      \arpeggioArrowDown
      <e b gis e b e,> \arpeggio
      \arpeggioArrowUp
      <e b gis e b e,> \arpeggio
      \arpeggioArrowDown
      <e b gis e b e,>] \arpeggio |
    \arpeggioArrowUp
    <e b a f c e,> \arpeggio
      \arpeggioArrowDown
      <e b a f c e,> \arpeggio
      \arpeggioArrowUp
      <e b a f c e,> \arpeggio
      \arpeggioArrowDown
      <e b a f c e,> \arpeggio
      \arpeggioArrowUp
      <e b a f c e,> \arpeggio
      \arpeggioArrowDown
      <e b a f c e,> \arpeggio |
    \arpeggioArrowUp
    <e b gis e b e,> \arpeggio
      \arpeggioArrowDown
      <e b gis e b e,> \arpeggio
      \arpeggioArrowUp
      <e b gis e b e,> \arpeggio
      \arpeggioArrowDown
      <e b gis e b e,> \arpeggio
      \arpeggioArrowUp
      <e b gis e b e,> \arpeggio
      \arpeggioArrowDown
      <e b gis e b e,> \arpeggio |
    \arpeggioArrowUp
    <e b a f c e,> \arpeggio
      \arpeggioArrowDown
      <e b a f c e,> \arpeggio
      \arpeggioArrowUp
      <e b a f c e,> \arpeggio
      \arpeggioArrowDown
      <e b a f c e,> \arpeggio
      \arpeggioArrowUp
      <e b a f c e,> \arpeggio
      \arpeggioArrowDown
      <e b a f c e,> \arpeggio |
    \arpeggioArrowUp
    <e b gis e b e,>8 \arpeggio
      <e b gis e b e,>16 \arpeggio
      \arpeggioArrowDown
      <e b gis e b e,> \arpeggio
      \arpeggioArrowUp
      <e b gis e b e,>8 \arpeggio |
    <e b gis e b e,>8 \arpeggio
      \bar "||" \toCoda
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
    e8[ e] |
    e4 e8 |
    e4 d8 |
    d4 c8~ |
    c b c |
    e b4 |
    c4 a8 |
    gis4 e8 |
    <gis b e>
  }
  
  % Bull-fighting theme
  \barNumberCheck 45
  \relative c' {
    e8[ gis] |
    b4 gis8~ |
    gis8 a[ b] |
    \grace { a16_( b } a4) gis8~ |
    gis8 a[ b] |
    c8 a4 |
    b8 g4 |
    f4 e8~ |
    e8
  }
  
  % Bull-fighting theme again
  \barNumberCheck 53
  \relative c' {
    e8[ gis] |
    b4 gis8~ |
    gis8 a[ b] |
    \grace { a16_( b } a4) gis8~ |
    gis8 a[ b] |
    c8 a4 |
    b8 g4 |
    f4 e8~ |
    e8
  }
  
  % Returning strummed interlude
  \barNumberCheck 61
  \relative c' {
    \arpeggioArrowUp
    <f b, a d,>16[ \arpeggio
      \arpeggioArrowDown
      <f b, a d,> \arpeggio
      \arpeggioArrowUp
      <f b, a d,> \arpeggio
      \arpeggioArrowDown
      <f b, a d,>] \arpeggio |
    \arpeggioArrowUp
    <e b gis e b e,>8 \arpeggio
      <f b, a d,> \arpeggio
      <e b gis e b e,> \arpeggio |
    r8
    \arpeggioArrowUp
      <f b, a d,>16 \arpeggio
      \arpeggioArrowDown
      <f b, a d,> \arpeggio
      \arpeggioArrowUp
      <f b, a d,> \arpeggio
      \arpeggioArrowDown
      <f b, a d,> \arpeggio |
    \arpeggioArrowUp
    <e b gis e b e,>8 \arpeggio
      <f b, a d,> \arpeggio
      <e b gis e b e,> \arpeggio |
    r8
    \arpeggioArrowUp
      <f b, a d,>16 \arpeggio
      \arpeggioArrowDown
      <f b, a d,> \arpeggio
      \arpeggioArrowUp
      <f b, a d,> \arpeggio
      \arpeggioArrowDown
      <f b, a d,> \arpeggio |
    \arpeggioArrowUp
    <e b gis e b e,>16 \arpeggio
      \arpeggioArrowDown
      <e b gis e b e,> \arpeggio
      \arpeggioArrowUp
      <f b, a d,> \arpeggio
      \arpeggioArrowDown
      <f b, a d,> \arpeggio
      \arpeggioArrowUp
      <f b, a d,> \arpeggio
      \arpeggioArrowDown
      <f b, a d,> \arpeggio |
    \arpeggioArrowUp
    <e b gis e b e,>16 \arpeggio
      \arpeggioArrowDown
      <e b gis e b e,> \arpeggio
      \arpeggioArrowUp
      <f b, a d,> \arpeggio
      \arpeggioArrowDown
      <f b, a d,> \arpeggio
      \arpeggioArrowUp
      <f b, a d,> \arpeggio
      \arpeggioArrowDown
      <f b, a d,> \arpeggio |
    \arpeggioArrowUp
    <e b gis e b e,>8 \arpeggio
      <e b gis e b e,>16 \arpeggio
      \arpeggioArrowDown
      <e b gis e b e,> \arpeggio
      \arpeggioArrowUp
      <e b gis e b e,>8 \arpeggio |
    <e b gis e b e,>8 \arpeggio
      \bar "||" \dcAlCoda
  }
  
  % Finishing chords
  \break
  \simultaneousMarkSeparator
  \coda
  \barNumberCheck 69
  \relative c' {
    \arpeggioArrowUp
    \textLengthOn
    b8\rest
      ^\markup \center-align { "     " }
    <<
      \fingeringAright
      \once \override Staff.AccidentalPlacement.right-padding = #-0.8
      \once \override Arpeggio.padding = #1
      \nudgeNextBarre #1.7
      {
        <e,, e'-3 gis!-2 d'-4 e-0> \arpeggio
          ^\position V
          ^\markup \center-align { "            " }
      }
        \\
      \fingeringAleft
      { \once \hide Stem <e''-1 \2> }
    >> |
    <a,, e'-3 a-4 c e a> \arpeggio
      ^\barre CV
      ^\markup \center-align { "       " }
    \textLengthOff
      \bar "|."
  }
  
}


lowVoiceMusic = {
  
  \globalSettings
  
  % Main theme high
  \partial 4
  \relative c, {
    r4 |
    e4. |
    a |
    a |
    e |
  }
  
  % Main theme low
  \barNumberCheck #5
  \relative c {
    gis8 r4 |
    a4. |
    c |
    e, |
  }
  
  % Scale run low
  \barNumberCheck #9
  \relative c, {
    e4. |
    a |
    d |
    e, |
  }
  
  % Scale run high
  \barNumberCheck #13
  \relative c, {
    e4. |
    a |
    d |
    e,8
  }
  
  % Strummed main theme high
  \barNumberCheck #16
  {
    s4 |
    s4. * 3 |
    s8
  }
  
  % Strummed main theme low
  \barNumberCheck #20
  {
    s4 |
    s4. * 3 |
    s8
  }
  
  % Strummed interlude
  \barNumberCheck #24
  {
    s4 |
    s4. * 4 |
    s8
  }
  
  % Lyrical theme high
  \barNumberCheck #29
  \relative c, {
    r4 |
    e8 e'' gis |
    e,, e'' gis |
    a,, e'' a |
    a,,4. |
    g'4 b8 |
    fis b dis |
    e,, b'' e |
    e,,4. |
  }
  
  % Lyrical theme low
  \barNumberCheck #38
  \relative c, {
    e8 e' <gis b> |
    e, e' gis |
    a, e' a |
    a,4. |
    g4 b8 |
    fis8 b4 |
    e,8 b' e~ |
    e
  }
  
  % Bull-fighting theme
  \barNumberCheck 45
  \relative c, {
    r4 |
    e8 b'' e |
    e,, <c'' f>4 |
    e,,8 b'' e |
    e,,4. |
    a8 c' e |
    g,, b' d |
    <a d,> b gis |
    e,4. |
  }
  
  % Bull-fighting theme again
  \barNumberCheck 54
  \relative c, {
    e8 b'' e |
    e,, <c'' f>4 |
    e,,8 b'' e |
    e,,4. |
    a8 c' e |
    g,, b' d |
    <a d,> b gis |
    e,4. |
  }
  
  % Returning strummed interlude
  \barNumberCheck 62
  \relative c, {
    s4. |
    e4. |
    s4. |
    e4. |
    s4. * 3 |
    s8
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