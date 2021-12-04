\version "2.18.2"


\include "../conway.ily"


\header {
  title = "Fantasie Number 7"
  subtitle = \markup {
    \center-column {
      "Diana Poulton Number 1a: A Fantasie,"
      "in Standard tuning (per Conway's teacher, Mr Hall)"
    }
  }
  composer = "John Dowland"
  arranger = "Conway (arrangement)"
}


initialSignatures = {
  \clef "treble_8"
  \key e \major
  \time 2/2
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \set Timing.beamExceptions = #'(
    (
      end
        .
      (
        ((1 . 8) . (4 4)) ;; quavers by fours
        ((1 . 12) . (3 3 3 3)) ;; anything shorter by beat
      )
    )
  )
}


highVoiceMusic = {
  
  % Main theme high
  \barNumberCheck #1
  \relative c'' {
    b2 gis4 b |
    a gis fis2 |
    e4 gis fis e~ |
    e8 fis dis4 e4. dis8 |
    cis8. dis16 e8 dis16 e fis8. gis16 a8 gis16 fis |
    gis8. a16 b4 a gis |
    fis4. fis8 e8 b4 d8 |
    cis4 b a8. b16 cis8 dis |
    e2 dis8 cis16 dis <e~ b~>4 |
    <e b> dis e
  }
  
  % Main theme low
  \barNumberCheck #10
  \relative c' {
    b4 |
    gis b a gis |
    fis4. gis8 a b cis dis |
    e fis gis e a4 gis~ |
    gis fis gis4. gis8 |
    cis,4 e fis gis |
    a4. a8 gis4 fis |
    b,8 e e4~ e16 e dis cis dis16 e8 dis16 |
    e4
  }
  
}


lowVoiceMusic = {
  
  % Main theme high
  \barNumberCheck #1
  \relative c {
    s1 * 6 |
    b2 gis4 b |
    a gis fis a |
    e gis fis e |
    b'2 e,4
  }
  
  % Main theme low
  \barNumberCheck #10
  \relative c {
    r4 |
    r4 e cis e~ |
    e dis cis a |
    gis e fis gis |
    a2 gis |
    cis4. b8 a4 gis |
    fis r e fis |
    gis4. a8 b2 |
    e,4
  }
  
}


upperMiddleMusic = {
  
  % Main theme high
  \barNumberCheck #1
  \relative c' {
    s1 * 5 |
    b4. e8 cis8 dis e4 |
    b2 s2 |
    s1 |
    gis8 a b cis s2 |
    s2 s4
  }
  
  % Main theme low
  \barNumberCheck #10
  \relative c' {
    s4 |
    s1 * 2 |
    b2 cis8 dis e4~ |
    e8 dis cis4 dis2 |
    s2 s4 b4 |
    a4 s4 b8. e16 dis8 cis |
    b2 s2 |
    s4
  }
  
}


lowerMiddleMusic = {
  
  % Main theme high
  \barNumberCheck #1
  \relative c' {
    s1 * 3 |
    b2 gis4 b |
    a gis fis2 |
    e4. gis8 fis4 e |
    fis8. e16 dis4 e4 fis~ |
    fis8 e e4 <fis cis>4 a, |
    b e a gis |
    fis8 e fis4 e
  }
  
  % Main theme low
  \barNumberCheck #10
  \relative c {
    s4 |
    s1 * 2 |
    e2 s4 b'4~ |
    b cis cis8. cis16 bis4 |
    gis4. s8 fis8 e e4 |
    e8. e16 dis4 e4 a |
    gis2 fis4. fis8 |
    <e gis>4
  }
  
}


allMusic = {
  \new Staff \with {
    midiInstrument = #"acoustic guitar (nylon)"
  }
  \globalSettings
  \initialSignatures
  <<
    << \highVoiceMusic >>
      \\
    << \lowVoiceMusic >>
      \\
    << \upperMiddleMusic >>
      \\
    << \lowerMiddleMusic >>
  >>
}


\score {
  \allMusic
}

\score {
  \allMusic
  \midi { }
}
