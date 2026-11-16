\version "2.24.0"
\header {
title = "I WILL SING UNTO THE LORD"
subtitle = "An Oratorio in Three Acts (Exodus 2, 14 & 15)"
composer = "Darius Kabelo Serojane"
poet = "Text: King James Version (Adapted)"
tagline = "Composed by Darius Kabelo Serojane | Full Score with Tonic Sol-fa"
}
\paper {
#(set-paper-size "a4")
top-margin = 15\mm
bottom-margin = 15\mm
left-margin = 15\mm
right-margin = 15\mm
system-system-spacing.basic-distance = #18
}
% Custom Tonic Sol-fa Naming (Movable Do) - Fixed to accept pitch and context arguments
solfaNames = \with {
printKeyName = ##t
noteNameFunction = #(lambda (pitch context)
(let* ((tonic (ly:context-property context 'tonic (ly:make-pitch 0 0 0)))
(diff (ly:pitch-diff pitch tonic))
(step (modulo (ly:pitch-notename diff) 7))
(names #("d" "r" "m" "f" "s" "l" "t")))
(vector-ref names step)))
}
% =====================================================================
% ACT I: THE CRY IN THE WILDERNESS
% =====================================================================
\bookpart {
\header {
piece = "ACT I - 1. Overture: Darkness and Promise (Haydn Style)"
}
\score {
<<
\new Staff \with { instrumentName = "Horns / Brass" } {
\clef treble
\key c \minor
\time 4/4
\tempo "Adagio ma non troppo" 4 = 66
r1 | r1 |
\key c \major
\tempo "Allegro maestoso (Deliverance Motif)" 4 = 120
c'2\ff g'2 | a'4. g'8 e'2 | d'4 g' b' d'' | c''1 \bar "|."
}
\new Staff \with { instrumentName = "Strings" } {
\clef treble
\key c \minor
c'4\p( ees' d' b) | c'4( aes' g'2) |
\key c \major
<c' e' g'>2\ff <g' b' d''>2 | <a' c'' e''>4. <g' b' d''>8 <e' g' c''>2 |
<d' g' b'>4 <g' b' d''> <b' d'' g''> <d'' g'' b''> | <c'' e'' g'' c'''>1 \bar "|."
}
>>
\layout { }
\midi { }
}
\header {
piece = "2. Chorus: The Groaning of Israel (Puccini Style)"
}
\score {
<<
\new NoteNames \with { \solfaNames } {
\key f \minor \time 3/4
c''4 aes' f' | g'2 e'4 | f'4 aes' c'' | des''2\ff c''4 |
\key aes \major
ees''4\p c'' aes' | bes'2 g'4 | aes'2. \bar "|."
}
\new ChoirStaff <<
\new Staff \with { instrumentName = "Soprano" } <<
\new Voice = "sop2" {
\clef treble \key f \minor \time 3/4
\tempo "Andante doloroso" 4 = 72
c''4\mp( aes') f' | g'2 e'4 | f'4( aes') c'' | des''2\ff c''4 |
\key aes \major
ees''4\p( c'') aes' | bes'2 g'4 | aes'2. \bar "|."
}
\new Lyrics \lyricsto "sop2" {
And Is -- ra -- el sighed, cried un -- to God!
God heard their groan -- ing.
}
>>
\new Staff \with { instrumentName = "Alto" } <<
\new Voice = "alt2" {
\clef treble \key f \minor \time 3/4
aes'4 f' c' | e'2 c'4 | c'4 f' aes' | bes'2\ff aes'4 |
\key aes \major
c''4\p aes' ees' | g'2 ees'4 | ees'2. \bar "|."
}
\new Lyrics \lyricsto "alt2" {
And Is -- ra -- el sighed, cried un -- to God!
God heard their groan -- ing.
}
>>
\new Staff \with { instrumentName = "Tenor" } <<
\new Voice = "ten2" {
\clef "treble_8" \key f \minor \time 3/4
f'4 c' aes | c'2 g4 | aes4 c' f' | f'2\ff e'4 |
\key aes \major
aes'4\p ees' c' | ees'2 bes4 | c'2. \bar "|."
}
\new Lyrics \lyricsto "ten2" {
And Is -- ra -- el sighed, cried un -- to God!
God heard their groan -- ing.
}
>>
\new Staff \with { instrumentName = "Bass" } <<
\new Voice = "bas2" {
\clef bass \key f \minor \time 3/4
f4 f f | c2 c4 | f4 f f | bes,2\ff c4 |
\key aes \major
aes,4\p aes, c | ees2 ees4 | aes,2. \bar "|."
}
\new Lyrics \lyricsto "bas2" {
And Is -- ra -- el sighed, cried un -- to God!
God heard their groan -- ing.
}
>>
>>
>>
\layout { }
\midi { }
}
\header {
piece = "3. Recitative: The Pursuit of Pharaoh (Mozart Style)"
}
\score {
<<
\new NoteNames \with { \solfaNames } {
\key d \minor \time 4/4
r8 a' a' a' d''4 a'8 a' | bes'8 bes' g' g' e'4 r4 |
\key g \minor
r8 d'' d'' bes' g'4 d'8 d' | ees'8 ees' c' c' d'2 \bar "|."
}
\new Staff \with { instrumentName = "Narrator (Tenor)" } <<
\new Voice = "nar3" {
\clef "treble_8" \key d \minor \time 4/4
\tempo "Allegro agitato" 4 = 132
r8 a' a' a' d''4 a'8 a' | bes'8 bes' g' g' e'4 r4 |
\key g \minor
r8 d'' d'' bes' g'4 d'8 d' | ees'8 ees' c' c' d'2 \bar "|."
}
\new Lyrics \lyricsto "nar3" {
But the E -- gyp -- tians pur -- sued af -- ter them,
And when Pha -- raoh drew nigh, they were sore a -- fraid!
}
>>
\new Staff \with { instrumentName = "Strings" } {
\clef bass \key d \minor \time 4/4
<d f a>4\f r4 <d f a>4 r4 | <g bes d'>4 r4 <a cis' e'>4\sfz r4 |
\key g \minor
<g bes d'>4\f r4 <g bes d'>4 r4 | <c ees g>4 r4 <d fis a>2\sfz \bar "|."
}
>>
\layout { }
\midi { }
}
\header {
piece = "4. Aria: Fear Ye Not (Moses - Mozart Sarastro Style)"
}
\score {
<<
\new NoteNames \with { \solfaNames } {
\key bes \major \time 4/4
f2 bes2 | d'4. c'8 bes2 | g4 ees' d' c' | bes2 a2 |
d'4 bes g ees | f2 f,2 | bes,1 \bar "|."
}
\new Staff \with { instrumentName = "Moses (Bass)" } <<
\new Voice = "mos4" {
\clef bass \key bes \major \time 4/4
\tempo "Larghetto" 4 = 60
f2\p bes2 | d'4.( c'8) bes2 | g4 ees' d' c' | bes2 a2 |
d'4\mf bes g ees | f2 f,2 | bes,1 \bar "|."
}
\new Lyrics \lyricsto "mos4" {
Fear ye not, stand still, and see the sal -- va -- tion,
The Lord shall fight for you.
}
>>
\new Staff \with { instrumentName = "Woodwinds & Strings" } {
\clef treble \key bes \major \time 4/4
<d' f' bes'>2\p <f' bes' d''>2 | <bes' d'' f''>2 <f' bes' d''>2 |
<ees' g' bes'>2 <f' bes' d''>4 <ees' g' c''> | <d' f' bes'>2 <c' f' a'>2 |
<d' f' bes'>4\mf <bes d' g'> <ees' g' bes'> <c' ees' g'> | <d' f' bes'>2 <c' f' a'>2 | <d' f' bes'>1 \bar "|."
}
>>
\layout { }
\midi { }
}
}
% =====================================================================
% ACT II: THE PARTING OF THE SEA
% =====================================================================
\bookpart {
\header {
piece = "ACT II - 5. Accompanied Recitative: Stretch Out Thine Hand (Haydn Style)"
}
\score {
<<
\new NoteNames \with { \solfaNames } {
\key e \minor \time 4/4
r4 b'8 b' e''4 b'8 g' | a'8 a' fis' fis' b'2 |
\key g \major
r4 d''8 d'' b'4 g'8 a' | b'4 d'' g'2 \bar "|."
}
\new Staff \with { instrumentName = "Narrator (Tenor)" } <<
\new Voice = "nar5" {
\clef "treble_8" \key e \minor \time 4/4
\tempo "Allegro moderato" 4 = 108
r4 b'8 b' e''4 b'8 g' | a'8 a' fis' fis' b'2 |
\key g \major
r4 d''8 d'' b'4 g'8 a' | b'4 d'' g'2 \bar "|."
}
\new Lyrics \lyricsto "nar5" {
And Mo -- ses stretched out his hand o -- ver the sea;
And the wa -- ters were di -- vi -- ded.
}
>>
\new Staff \with { instrumentName = "Flutes & Violins" } {
\clef treble \key e \minor \time 4/4
e'16\p fis' g' a' b' c'' d'' e'' fis'' g'' a'' b'' e'''4 | a''16 g'' fis'' e'' d'' c'' b' a' b'2 |
\key g \major
<g' b' d''>2\mf <b' d'' g''>2 | <d'' g'' b''>2 <b' d'' g''>2 \bar "|."
}
>>
\layout { }
\midi { }
}
\header {
piece = "6. Dramatic Chorus: The Waters Returned (Haydn & Mozart Storm)"
}
\score {
<<
\new NoteNames \with { \solfaNames } {
\key d \minor \time 4/4
a'4 a'8 a' d''4 d'' | f''4 e''8 d'' cis''4 a' |
bes'4 g' e' cis' | d'2\pp d'2 \bar "|."
}
\new ChoirStaff <<
\new Staff \with { instrumentName = "Soprano" } <<
\new Voice = "sop6" {
\clef treble \key d \minor \time 4/4
\tempo "Presto furioso" 4 = 152
a'4\ff a'8 a' d''4 d'' | f''4 e''8 d'' cis''4 a' |
bes'4 g' e' cis' | d'2\pp d'2 \bar "|."
}
\new Lyrics \lyricsto "sop6" {
And the wa -- ters re -- turned, and co -- vered Pha -- raoh's host:
Not one re -- mained.
}
>>
\new Staff \with { instrumentName = "Alto" } <<
\new Voice = "alt6" {
\clef treble \key d \minor \time 4/4
f'4\ff f'8 f' a'4 a' | a'4 g'8 f' e'4 e' |
g'4 e' cis' a | a2\pp a2 \bar "|."
}
\new Lyrics \lyricsto "alt6" {
And the wa -- ters re -- turned, and co -- vered Pha -- raoh's host:
Not one re -- mained.
}
>>
\new Staff \with { instrumentName = "Tenor" } <<
\new Voice = "ten6" {
\clef "treble_8" \key d \minor \time 4/4
d'4\ff d'8 d' f'4 f' | d'4 d'8 d' a4 cis' |
d'4 bes g e | f2\pp f2 \bar "|."
}
\new Lyrics \lyricsto "ten6" {
And the wa -- ters re -- turned, and co -- vered Pha -- raoh's host:
Not one re -- mained.
}
>>
\new Staff \with { instrumentName = "Bass" } <<
\new Voice = "bas6" {
\clef bass \key d \minor \time 4/4
d4\ff d8 d d4 d | d4 e8 f a4 a, |
g,4 g, a, a, | d2\pp d2 \bar "|."
}
\new Lyrics \lyricsto "bas6" {
And the wa -- ters re -- turned, and co -- vered Pha -- raoh's host:
Not one re -- mained.
}
>>
>>
>>
\layout { }
\midi { }
}
}
% =====================================================================
% ACT III: THE SONG OF MOSES AND MIRIAM
% =====================================================================
\bookpart {
\header {
piece = "ACT III - 7. Recitative: Then Sang Moses (Handel Style)"
}
\score {
<<
\new NoteNames \with { \solfaNames } {
\key d \major \time 4/4
r4 a'8 a' d''4 a'8 fis' | b'8 b' g' e' a'2 \bar "|."
}
\new Staff \with { instrumentName = "Narrator (Tenor)" } <<
\new Voice = "nar7" {
\clef "treble_8" \key d \major \time 4/4
\tempo "Maestoso" 4 = 96
r4 a'8 a' d''4 a'8 fis' | b'8 b' g' e' a'2 \bar "|."
}
\new Lyrics \lyricsto "nar7" {
Then sang Mo -- ses and Is -- ra -- el this song un -- to the Lord:
}
>>
\new Staff \with { instrumentName = "Trumpets & Strings" } {
\clef treble \key d \major \time 4/4
<d' fis' a'>2\f <d' fis' d''>2 | <g' b' d''>4 <e' g' b'> <e' a' cis''>2 \bar "|."
}
>>
\layout { }
\midi { }
}
\header {
piece = "8. Grand Chorus: I Will Sing Unto the Lord (Handel Fanfare & Fugue)"
}
\score {
<<
\new NoteNames \with { \solfaNames } {
\key d \major \time 4/4
d''4 a' fis' d' | b'4. a'8 g'4 fis' | e'8 fis' g' a' b'4 cis'' | d''1 |
% Fugue Subject
d'4 fis' a' d'' | cis''8 b' a' g' fis'4 d' | g'4 b' e'' d'' | cis''2 d''2 \bar "|."
}
\new ChoirStaff <<
\new Staff \with { instrumentName = "Soprano" } <<
\new Voice = "sop8" {
\clef treble \key d \major \time 4/4
\tempo "Allegro maestoso" 4 = 120
d''4\ff a' fis' d' | b'4. a'8 g'4 fis' | e'8 fis' g' a' b'4 cis'' | d''1 |
r1 | r1 | d''4\f fis'' a'' d''' | cis'''8 b'' a'' g'' fis''4 d'' \bar "|."
}
\new Lyrics \lyricsto "sop8" {
I will sing un -- to the Lord, for he hath tri -- umphed glo -- rious -- ly!
The Lord is my strength and my sal -- va -- tion!
}
>>
\new Staff \with { instrumentName = "Alto" } <<
\new Voice = "alt8" {
\clef treble \key d \major \time 4/4
fis'4\ff fis' d' d' | g'4. fis'8 e'4 d' | cis'8 d' e' fis' g'4 e' | fis'1 |
r1 | a'4\f cis'' e'' a'' | g''8 fis'' e'' d'' cis''4 a' | a'2 a'2 \bar "|."
}
\new Lyrics \lyricsto "alt8" {
I will sing un -- to the Lord, for he hath tri -- umphed glo -- rious -- ly!
The Lord is my strength and song, sal -- va -- tion!
}
>>
\new Staff \with { instrumentName = "Tenor" } <<
\new Voice = "ten8" {
\clef "treble_8" \key d \major \time 4/4
a4\ff d' a fis | d'4. d'8 b4 a | a4 a d' a | a1 |
r1 | r1 | b4\f d' g' fis' | e'2 fis'2 \bar "|."
}
\new Lyrics \lyricsto "ten8" {
I will sing un -- to the Lord, for he hath tri -- umphed glo -- rious -- ly!
The Lord is my strength and song!
}
>>
\new Staff \with { instrumentName = "Bass" } <<
\new Voice = "bas8" {
\clef bass \key d \major \time 4/4
d4\ff d d d | g4. fis8 e4 d | a,4 a, g, a, | d1 |
d4\f fis a d' | cis'8 b a g fis4 d | g4 b e' d' | a2 d2 \bar "|."
}
\new Lyrics \lyricsto "bas8" {
I will sing un -- to the Lord, for he hath tri -- umphed glo -- rious -- ly!
The Lord is my strength and song, and he is be -- come my sal -- va -- tion!
}
>>
>>
>>
\layout { }
\midi { }
}
\header {
piece = "9. Duet: Who Is Like Unto Thee? (Miriam & Moses - Mozart Style)"
}
\score {
<<
\new NoteNames \with { \solfaNames } {
\key g \major \time 6/8
b'4 d''8 g''4 d''8 | e''4 c''8 a'4. | d''4 b'8 g'4 a'8 | b'4. g'4. \bar "|."
}
\new Staff \with { instrumentName = "Miriam (Soprano)" } <<
\new Voice = "mir9" {
\clef treble \key g \major \time 6/8
\tempo "Andante grazioso" 8 = 112
b'4\p d''8 g''4 d''8 | e''4 c''8 a'4. | d''4\mf b'8 g'4 a'8 | b'4. g'4. \bar "|."
}
\new Lyrics \lyricsto "mir9" {
Who is like un -- to thee, O Lord,
Glo -- rious in ho -- li -- ness!
}
>>
\new Staff \with { instrumentName = "Moses (Bass)" } <<
\new Voice = "mos9" {
\clef bass \key g \major \time 6/8
g4\p b8 b4 b8 | c'4 a8 fis4. | b4\mf g8 e4 fis8 | g4. g,4. \bar "|."
}
\new Lyrics \lyricsto "mos9" {
Who is like un -- to thee, O Lord,
Glo -- rious in ho -- li -- ness!
}
>>
>>
\layout { }
\midi { }
}
\header {
piece = "10. Aria & Women's Chorus: Song of Miriam (Puccini & Handel Dance)"
}
\score {
<<
\new NoteNames \with { \solfaNames } {
\key a \major \time 6/8
e''4. cis''4 a'8 | fis''4. d''4 b'8 | e''4 cis''8 b'4 a'8 | gis'4. a'4. \bar "|."
}
\new Staff \with { instrumentName = "Miriam (Soprano)" } <<
\new Voice = "mir10" {
\clef treble \key a \major \time 6/8
\tempo "Allegro vivace (With Timbrels)" 8 = 138
e''4.\f cis''4 a'8 | fis''4. d''4 b'8 | e''4 cis''8 b'4 a'8 | gis'4. a'4. \bar "|."
}
\new Lyrics \lyricsto "mir10" {
Sing ye un -- to the Lord, for he hath tri -- umphed glo -- rious -- ly!
}
>>
\new Staff \with { instrumentName = "Women's Chorus (SSA)" } <<
\new Voice = "ssa10" {
\clef treble \key a \major \time 6/8
<cis'' e''>4.\f <a' cis''>4 <e' a'>8 | <d'' fis''>4. <b' d''>4 <gis' b'>8 |
<cis'' e''>4 <a' cis''>8 <gis' b'>4 <fis' a'>8 | <e' gis'>4. <e' a'>4. \bar "|."
}
\new Lyrics \lyricsto "ssa10" {
Sing ye un -- to the Lord, for he hath tri -- umphed glo -- rious -- ly!
}
>>
\new DrumStaff \with { instrumentName = "Timbrel" } {
\time 6/8
tamb4\f tamb8 tamb4 tamb8 | tamb4 tamb8 tamb4 tamb8 | tamb4 tamb8 tamb4 tamb8 | tamb4. tamb4. \bar "|."
}
>>
\layout { }
\midi { }
}
\header {
piece = "11. Finale Chorus: The Lord Shall Reign (Handel Fugue & Puccini Climax)"
}
\score {
<<
\new NoteNames \with { \solfaNames } {
\key d \major \time 4/4
d'2 a'2 | fis'4 d' g'2 | e'4 cis' d' b' | a'2 g'2 |
\tempo "Largamente (Unison Climax)" 4 = 76
d''2\fff a'2 | b'4 cis'' d''2 | e''2 fis''2 | d''1 \bar "|."
}
\new ChoirStaff <<
\new Staff \with { instrumentName = "Soprano" } <<
\new Voice = "sop11" {
\clef treble \key d \major \time 4/4
\tempo "Allegro moderato" 4 = 108
r1 | r1 | d''2\f a''2 | fis''4 d'' g''2 |
d''2\fff a'2 | b'4 cis'' d''2 | e''2 fis''2 | d''1 \bar "|."
}
\new Lyrics \lyricsto "sop11" {
The Lord shall reign,
The Lord shall reign for ev -- er! A -- men!
}
>>
\new Staff \with { instrumentName = "Alto" } <<
\new Voice = "alt11" {
\clef treble \key d \major \time 4/4
r1 | a'2\f e''2 | cis''4 a' d''2 | cis''2 b'2 |
d''2\fff a'2 | b'4 cis'' d''2 | a'2 a'2 | fis'1 \bar "|."
}
\new Lyrics \lyricsto "alt11" {
The Lord shall reign for ev -- er,
The Lord shall reign for ev -- er! A -- men!
}
>>
\new Staff \with { instrumentName = "Tenor" } <<
\new Voice = "ten11" {
\clef "treble_8" \key d \major \time 4/4
d'2\f a'2 | fis'4 d' g'2 | e'4 cis' d' b' | a'2 g'2 |
d'2\fff a2 | b4 cis' d'2 | cis'2 d'2 | a1 \bar "|."
}
\new Lyrics \lyricsto "ten11" {
The Lord shall reign for ev -- er and ev -- er,
The Lord shall reign for ev -- er! A -- men!
}
>>
\new Staff \with { instrumentName = "Bass" } <<
\new Voice = "bas11" {
\clef bass \key d \major \time 4/4
r1 | r1 | a2\f e'2 | cis'4 a d'2 |
d2\fff a,2 | b,4 cis d2 | a,2 d2 | d1 \bar "|."
}
\new Lyrics \lyricsto "bas11" {
The Lord shall reign,
The Lord shall reign for ev -- er! A -- men!
}
>>
>>
>>
\layout { }
\midi { }
}
}