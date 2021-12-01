# guitar

Classical Guitar scores, typeset in [LilyPond].

* The original compositions are all already in the Public Domain
  (traditional, expired, etc.).
* I release my arrangements of these compositions
  into the Public Domain under CC0; see [LICENSE].


## PDF Releases

* [El Vito v1.0.0][el-vito]
* [Lágrima v1.1.0][lagrima]
* [Sor Study in C (Opus 35, Number 13) v1.0.0][sor-c-major-35-13]
* [Tetris Theme Quartet Arrangement v1.2.0][tetris-quartet]


## Remarks on note durations

After quite a bit of thought, I have concluded that it is impractical
to enforce 100% correct durations.

For example, consider the 3rd-last bar of Recuerdos de la Alhambra,
which is usually notated:

![Clear quaver arpeggio where the bottom note is a dotted minim in the low voice.](.durations/recuerdos-readable.preview.svg)

(See transcriptions
by [Stanley Yates][yates-recuerdos]
  ([archived version][yates-recuerdos-archived])
and [Daniel F. Savarese][savarese-recuerdos]
  ([archived version][savarese-recuerdos-archived])
among others.)

If the actual durations were written out, it would read:

![Confusing quaver arpeggio with ties in various places.](.durations/recuerdos-accurate.preview.svg)

Although this is more accurate, it is not very readable.
Therefore we stick with the first version (readability over accuracy).

In general, I think arguing/worrying about notation is counter-productive.
Just play the duration that sounds good.


## Unicode fractions for partial barres

| Strings | Unicode | Code point |
| - | - | - |
| 2 | ⅓ | `U+2153` |
| 3 | ½ | `U+00BD` |
| 4 | ⅔ | `U+2154` |
| 5 | ⅚ | `U+215A` |


[license]: LICENSE
[lilypond]: https://lilypond.org/

[el-vito]:
  https://github.com/yawnoc/guitar/releases/tag/el-vito-v1.0.0
[lagrima]:
  https://github.com/yawnoc/guitar/releases/tag/lagrima-v1.1.0
[sor-c-major-35-13]:
  https://github.com/yawnoc/guitar/releases/tag/sor-c-major-35-13-v1.0.0
[tetris-quartet]:
  https://github.com/yawnoc/guitar/releases/tag/tetris-quartet-v1.2.0

[yates-recuerdos]: https://stanleyyates.com/scores/rdla.pdf
[yates-recuerdos-archived]:
  https://web.archive.org/web/20210427195742/https://stanleyyates.com/scores/rdla.pdf
[savarese-recuerdos]:
  https://www.savarese.org/downloads/sheetmusic/RecuerdosDeLaAlhambra.pdf
[savarese-recuerdos-archived]:
  https://web.archive.org/web/20210226015018/https://www.savarese.org/downloads/sheetmusic/RecuerdosDeLaAlhambra.pdf
