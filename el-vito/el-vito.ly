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
    \fingeringAbove
    <e-4>16 e e e |
    <e-4>8 <b-1>16 <c-2> <d-4> <b-1> |
    <c-2>8 <e-4>16 e e e |
    <e-4>8 <d-4>16_( <c-2>) <b-1> <a-4 \2> |
    <gis-3>8
  }
  
  % Main theme low
  \barNumberCheck #4
  \relative c' {
    <e-0>16[ e e e] |
    e8 b16 c d b |
    c8 e16 e e e |
    e8 d16_( c) b a |
    gis8
  }
  
  % Scale run low
  \barNumberCheck #8
  \relative c {
    e16[ fis gis a] |
    <b-4>_( <ais-3>) <b-0> c d b |
    c_( b) a b c d |
    f_( e) d c b a |
    gis8
  }
  
  % Scale run high
  \barNumberCheck #12
  \relative c' {
    <e-2 \2>16[ <fis-4> <gis-1> <a-2>] |
    <b-2>_( <ais-1>) <b-1> <c-2> <d-4> <b-1> |
    <c-2>_( <b-1>) <a-4 \2> <b-1> <c-2> <d-4> |
    <f-4>_( <e-3>) <d-1> <c-4 \2> <b-3> <a-1> |
    <gis-1>8
  }
  
  % Strummed main theme high
  \barNumberCheck #16
  \relative c' {
    \fingeringAright
    \arpeggioArrowUp
    <e b gis-1 e-3 b-2 e,>16[ \arpeggio
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
      <e c-1 a-3 e-2 a,>16[ \arpeggio
      \arpeggioArrowDown
      <e c a e a,> \arpeggio
      \arpeggioArrowUp
      <e c a e a,> \arpeggio
      \arpeggioArrowDown
      <e c a e a,>] \arpeggio
    \arpeggioArrowUp
    <e c a e a,>8 \arpeggio d16[_( c) b a] |
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
    \fingeringBelow
    \arpeggioArrowUp
    <e b gis e b e,>8 \arpeggio <b,-2>16[ <c-4> <d-0> <b-2>] |
    <c-4>8
      \arpeggioArrowUp
      <e' c a e a,>16[ \arpeggio
      \arpeggioArrowDown
      <e c a e a,> \arpeggio
      \arpeggioArrowUp
      <e c a e a,> \arpeggio
      \arpeggioArrowDown
      <e c a e a,>] \arpeggio
    \arpeggioArrowUp
    <e c a e a,>8 \arpeggio <d,-0>16[_( <c-4>) <b-2> <a-0>] |
    <gis-4>8
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
      \fingeringAright
      \arpeggioArrowDown
      <e b gis-1 e-3 b-2 e,>] \arpeggio |
    \fingeringAleft
    \arpeggioArrowUp
    <e b a-1 f-3 c-2 e,> \arpeggio
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
    <e-0>8 e |
    <e'-4>4 e8 |
    e4 <d-2>8 |
    <d-4>4 <c-1>8~ |
    c <b-1>[ <c-2>] |
    <e-4> <b-1>4 |
    <c-4>4 <a-2>8 |
    gis4 <e-2>8~ |
    e
  }
  
  % Lyrical theme low
  \barNumberCheck #37
  \relative c' {
    <e-0>8[ e] |
    e4 e8 |
    \fingeringAright
    e4 <d-4>8 |
    \fingeringAleft
    <d-4>4 <c-1>8~ |
    c b[ c] |
    e b4 |
    \fingeringAright
    <c-1>4 \fingeringAleft <a-4>8 |
    \fingeringAright
    <gis-1>4 e8 |
    <gis b e>
  }
  
  % Bull-fighting theme
  \barNumberCheck 45
  \relative c' {
    \fingeringAleft
    <e-0>8[ \barreSpan ½CIV { gis] |
    <b-4>4 gis8~ |
    \fingeringAright
    gis8 } \barreSpan ½CV { a[ <b-4>] } |
    \fingeringAbove
    \grace { <a-2>16_( <b-4> } <a-2>4) gis8~ |
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
    \fingeringBelow
    <gis-4>8 r4 |
    a4. |
    <c-3> |
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
    e8 \barreSpan ½CIX { e'' gis |
    e,, e'' gis } |
    \fingeringAleft
    a,, <e''-2 \3> <a-3> |
    a,,4. |
    <g'-0>4 <b-0>8 |
    \barreSpan ⅔CIV { fis b dis |
    e,, b'' e |
    e,,4. } |
  }
  
  % Lyrical theme low
  \barNumberCheck #38
  \relative c, {
    e8 e' <gis b> |
    \fingeringAright
    e, e' <gis-1> |
    \fingeringAleft
    a, e' <a-3> |
    a,4. |
    \fingeringAright
    <g-3>4 <b-2>8 |
    <fis-2>8 <b-3>4 |
    e,8 b' e~ |
    e
  }
  
  % Bull-fighting theme
  \barNumberCheck 45
  \relative c, {
    r4 |
    \fingeringAright
    e8 b'' <e-2> |
    e,, <c'' f-2>4 |
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
