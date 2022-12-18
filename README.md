# guitar

Classical Guitar scores, typeset in [LilyPond].

* The original compositions are all already in the Public Domain
  (traditional, expired, etc.).
* I release my edits/arrangements of these compositions
  into the Public Domain under CC0; see [LICENSE].


## PDF Releases

* [Dowland Fantasia Number 7 v1.0.0][dowland-fantasia-7]
* [El Vito v1.1.3][el-vito]
* [Lágrima v1.2.2][lagrima]
* [Sor Study in C (Opus 35, Number 13) v1.1.1][sor-c-major-35-13]
* [Tetris Theme Quartet Arrangement v1.3.1][tetris-quartet]


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

**In general, notes might ring for longer than notated in my scores.**
It is up to the guitarist to either mute or let ring.
In my opinion, arguing/worrying too much about notation is counter-productive.
Just play the duration that sounds good.


## Unicode fractions for partial barres

| Strings | Unicode | Code point |
| - | - | - |
| 2 | ⅓ | `U+2153` |
| 3 | ½ | `U+00BD` |
| 4 | ⅔ | `U+2154` |
| 5 | ⅚ | `U+215A` |


## Unicode footnote symbols

| Unicode | Code point |
| - | - |
| * | `U+002A` |
| † | `U+2020` |
| ‡ | `U+2021` |
| § | `U+00A7` |
| ¶ | `U+00B6` |
| ‖ | `U+2016` |


## Unicode accidentals

| Unicode | Code point |
| - | - |
| ♭ | `U+266D` |
| ♮ | `U+266E` |
| ♯ | `U+266F` |


## Useful links

- <<https://www.delcamp.net/>> "3.033 Free classical guitar sheet music"


[license]: LICENSE
[lilypond]: https://lilypond.org/

[dowland-fantasia-7]:
  https://github.com/yawnoc/guitar/releases/tag/dowland-fantasia-7-v1.0.0
[el-vito]:
  https://github.com/yawnoc/guitar/releases/tag/el-vito-v1.1.3
[lagrima]:
  https://github.com/yawnoc/guitar/releases/tag/lagrima-v1.2.2
[sor-c-major-35-13]:
  https://github.com/yawnoc/guitar/releases/tag/sor-c-major-35-13-v1.1.1
[tetris-quartet]:
  https://github.com/yawnoc/guitar/releases/tag/tetris-quartet-v1.3.1

[yates-recuerdos]: https://stanleyyates.com/scores/rdla.pdf
[yates-recuerdos-archived]:
  https://web.archive.org/web/20210427195742/https://stanleyyates.com/scores/rdla.pdf
[savarese-recuerdos]:
  https://www.savarese.org/downloads/sheetmusic/RecuerdosDeLaAlhambra.pdf
[savarese-recuerdos-archived]:
  https://web.archive.org/web/20210226015018/https://www.savarese.org/downloads/sheetmusic/RecuerdosDeLaAlhambra.pdf
