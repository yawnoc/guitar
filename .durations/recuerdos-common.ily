initialSignatures = {
  \clef "treble_8"
  \key a \major
  \time 3/4
  \override Score.TimeSignature.stencil = ##f
}


lowVoiceMusic = {
  \globalSettings
  \relative c {
    a2.
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

