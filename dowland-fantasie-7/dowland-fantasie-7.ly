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
    <e b> fis gis e a4 gis~ |
    gis fis gis4. gis8 |
    <cis, gis>4 e fis gis |
    b,8 e e4~ e16 e dis cis dis16 e8 dis16 |
    e4
  }
  
}


lowVoiceMusic = {
}


upperMiddleMusic = {
}


lowerMiddleMusic = {
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
