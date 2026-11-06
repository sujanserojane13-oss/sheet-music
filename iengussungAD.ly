\version "2.24.0"

\header {
  title = "Agnus Dei"
    subtitle = "For SATB Choir A Cappella"
      composer = "Darius kabelo Serojane"
        tagline = ##f
        }

        \paper {
          #(set-paper-size "letter")
            top-margin = 15\mm
              bottom-margin = 15\mm
                left-margin = 15\mm
                  right-margin = 15\mm
                    between-system-space = 2.5\cm
                      induction-distance = 1.5\cm
                      }

                      global = {
                        \key d \minor
                          \time 4/4
                            \tempo "Adagio" 4 = 60
                            }

                            % -----------------------------------------------------------------------------
                            % SOPRANO MUSIC
                            % -----------------------------------------------------------------------------
                            sopranoMusic = \relative c'' {
                              \global
                                % Opening
                                  r1 | r1 | r1 | r2. r4 \bar "||"
                                    
                                      % Verse 1
                                        a2^\markup{\italic "Adagio"} f4 g | a2 d, | e4 f g a | f2 e \bar "||"
                                          
                                            % Chorus
                                              \key d \minor
                                                a2.\pp^\markup{\italic "Miserere"} f4 | g( a) bes2 | a4. g8 f4 g | a1 |
                                                  a2 g4 a | bes2 a | f4 g e2 | d1 \bar "||"

                                                    % Verse 2
                                                      f4^\markup{\italic "Dolce"} g a2 | d,4 e f2 | g4 f e d | e1 |
                                                        
                                                          % Bridge
                                                            \key d \major
                                                              fis2.^\markup{\italic "Ethereal"} g4 | a2. b4 | a g fis e | d1 \bar "||"
                                                                
                                                                  % Chorus Reprise
                                                                    a'2.\f f4 | g( a) bes2 | a4. g8 f4 g | a1 |
                                                                      d2 cis4 d | e2 d | b4 cis a2 | d,1 \bar "||"
                                                                        
                                                                          % Outro
                                                                            \tempo "Ritardando"
                                                                              fis2.\pp^\markup{\italic "Fading"} g4 | fis2. g4 | fis1 \bar "|."
                                                                              }

                                                                              sopranoWords = \lyricmode {
                                                                                Lamb of God, who takes a- way the sins,
                                                                                  have mer- cy on us now.
                                                                                    A- gnus De- i, Mi- se- re- re no- bis.
                                                                                      Grant us peace, your bound- less grace, love made whole.
                                                                                        In ev- ery sor- row shed, comfort o- ver- head.
                                                                                          Do- na no- bis pa- cem, pa- cem.
                                                                                            A- gnus De- i, Mi- se- re- re no- bis.
                                                                                              Do- na no- bis pa- cem, grant peace to us.
                                                                                                Pa- cem, pa- cem, pa- cem.
                                                                                                }

                                                                                                % -----------------------------------------------------------------------------
                                                                                                % ALTO MUSIC
                                                                                                % -----------------------------------------------------------------------------
                                                                                                altoMusic = \relative c' {
                                                                                                  \global
                                                                                                    % Opening
                                                                                                      r1 | r1 | r1 | r2. r4 \bar "||"
                                                                                                        
                                                                                                          % Verse 1
                                                                                                            f2 d4 e | f2 d | c4 d e f | d2 cis \bar "||"
                                                                                                              
                                                                                                                % Chorus
                                                                                                                  f2.\pp d4 | e2 f | f4. e8 d4 e | f1 |
                                                                                                                    f2 e4 f | g2 f | d4 d cis2 | d1 \bar "||"

                                                                                                                      % Verse 2
                                                                                                                        d4 e f2 | d4 c d2 | e4 d c b | c1 |
                                                                                                                          
                                                                                                                            % Bridge
                                                                                                                              d2. e4 | fis2. g4 | fis e d cis | d1 \bar "||"
                                                                                                                                
                                                                                                                                  % Chorus Reprise
                                                                                                                                    f2.\f d4 | e2 f | f4. e8 d4 e | f1 |
                                                                                                                                      a2 a4 a | a2 a | g4 g e2 | d1 \bar "||"
                                                                                                                                        
                                                                                                                                          % Outro
                                                                                                                                            d2.\pp e4 | d2. e4 | d1 \bar "|."
                                                                                                                                            }

                                                                                                                                            altoWords = \lyricmode {
                                                                                                                                              Lamb of God, who takes a- way the sins,
                                                                                                                                                have mer- cy on us now.
                                                                                                                                                  A- gnus De- i, Mi- se- re- re no- bis.
                                                                                                                                                    Grant us peace, your bound- less grace, love made whole.
                                                                                                                                                      In ev- ery sor- row shed, comfort o- ver- head.
                                                                                                                                                        Do- na no- bis pa- cem, pa- cem.
                                                                                                                                                          A- gnus De- i, Mi- se- re- re no- bis.
                                                                                                                                                            Do- na no- bis pa- cem, grant peace to us.
                                                                                                                                                              Pa- cem, pa- cem, pa- cem.
                                                                                                                                                              }

                                                                                                                                                              % -----------------------------------------------------------------------------
                                                                                                                                                              % TENOR MUSIC
                                                                                                                                                              % -----------------------------------------------------------------------------
                                                                                                                                                              tenorMusic = \relative c' {
                                                                                                                                                                \global
                                                                                                                                                                  % Opening
                                                                                                                                                                    \clef "treble_8"
                                                                                                                                                                      d2\pp^\markup{\italic "A cappella, slow"} a4 bes | c2 f, | g4 a bes c | a1 \bar "||"
                                                                                                                                                                        
                                                                                                                                                                          % Verse 1
                                                                                                                                                                            d2 a4 bes | c2 f, | g4 a bes c | a2 a \bar "||"
                                                                                                                                                                              
                                                                                                                                                                                % Chorus
                                                                                                                                                                                  d2.\pp a4 | bes2 d | c4. c8 a4 bes | c1 |
                                                                                                                                                                                    d2 c4 c | d2 c | a4 bes g2 | f1 \bar "||"

                                                                                                                                                                                      % Verse 2
                                                                                                                                                                                        a4 a a2 | f4 g a2 | c4 a g g | g1 |
                                                                                                                                                                                          
                                                                                                                                                                                            % Bridge
                                                                                                                                                                                              a2. a4 | d2. d4 | d a a g | fis1 \bar "||"
                                                                                                                                                                                                
                                                                                                                                                                                                  % Chorus Reprise
                                                                                                                                                                                                    d'2.\f a4 | bes2 d | c4. c8 a4 bes | c1 |
                                                                                                                                                                                                      f2 e4 f | g2 f | d4 e cis2 | d1 \bar "||"
                                                                                                                                                                                                        
                                                                                                                                                                                                          % Outro
                                                                                                                                                                                                            a2.\pp a4 | a2. a4 | a1 \bar "|."
                                                                                                                                                                                                            }

                                                                                                                                                                                                            tenorWords = \lyricmode {
                                                                                                                                                                                                              A- gnus De- i, qui tol- lis pec- ca- ta mun- di.
                                                                                                                                                                                                                Lamb of God, who takes a- way the sins,
                                                                                                                                                                                                                  have mer- cy on us now.
                                                                                                                                                                                                                    A- gnus De- i, Mi- se- re- re no- bis.
                                                                                                                                                                                                                      Grant us peace, your bound- less grace, love made whole.
                                                                                                                                                                                                                        In ev- ery sor- row shed, comfort o- ver- head.
                                                                                                                                                                                                                          Do- na no- bis pa- cem, pa- cem.
                                                                                                                                                                                                                            A- gnus De- i, Mi- se- re- re no- bis.
                                                                                                                                                                                                                              Do- na no- bis pa- cem, grant peace to us.
                                                                                                                                                                                                                                Pa- cem, pa- cem, pa- cem.
                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                % -----------------------------------------------------------------------------
                                                                                                                                                                                                                                % BASS MUSIC
                                                                                                                                                                                                                                % -----------------------------------------------------------------------------
                                                                                                                                                                                                                                bassMusic = \relative c {
                                                                                                                                                                                                                                  \global
                                                                                                                                                                                                                                    % Opening
                                                                                                                                                                                                                                      \clef bass
                                                                                                                                                                                                                                        d2\pp f4 g | a2 d, | c4 d g, c | d1 \bar "||"
                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                            % Verse 1
                                                                                                                                                                                                                                              d2 f4 g | a2 d, | c4 d g, c | a2 a \bar "||"
                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                  % Chorus
                                                                                                                                                                                                                                                    d2.\pp d4 | g,2 bes | f'4. f8 f4 f | f1 |
                                                                                                                                                                                                                                                      d2 c4 f | g2 f | d4 g, a2 | d1 \bar "||"

                                                                                                                                                                                                                                                        % Verse 2
                                                                                                                                                                                                                                                          d4 d d2 | d4 c f,2 | c'4 d e g | c,1 |
                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                              % Bridge
                                                                                                                                                                                                                                                                d2. d4 | d2. d4 | d d d a | d1 \bar "||"
                                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                                    % Chorus Reprise
                                                                                                                                                                                                                                                                      d2.\f d4 | g,2 bes | f'4. f8 f4 f | f1 |
                                                                                                                                                                                                                                                                        d2 a'4 d, | cis2 d | g,4 a a2 | d1 \bar "||"
                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                            % Outro
                                                                                                                                                                                                                                                                              d2.\pp d4 | d2. d4 | d1 \bar "|."
                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                              bassWords = \lyricmode {
                                                                                                                                                                                                                                                                                A- gnus De- i, qui tol- lis pec- ca- ta mun- di.
                                                                                                                                                                                                                                                                                  Lamb of God, who takes a- way the sins,
                                                                                                                                                                                                                                                                                    have mer- cy on us now.
                                                                                                                                                                                                                                                                                      A- gnus De- i, Mi- se- re- re no- bis.
                                                                                                                                                                                                                                                                                        Grant us peace, your bound- less grace, love made whole.
                                                                                                                                                                                                                                                                                          In ev- ery sor- row shed, comfort o- ver- head.
                                                                                                                                                                                                                                                                                            Do- na no- bis pa- cem, pa- cem.
                                                                                                                                                                                                                                                                                              A- gnus De- i, Mi- se- re- re no- bis.
                                                                                                                                                                                                                                                                                                Do- na no- bis pa- cem, grant peace to us.
                                                                                                                                                                                                                                                                                                  Pa- cem, pa- cem, pa- cem.
                                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                                  % -----------------------------------------------------------------------------
                                                                                                                                                                                                                                                                                                  % SCORE LAYOUT
                                                                                                                                                                                                                                                                                                  % -----------------------------------------------------------------------------
                                                                                                                                                                                                                                                                                                  \score {
                                                                                                                                                                                                                                                                                                    \new ChoirStaff <<
                                                                                                                                                                                                                                                                                                        \new Staff \with { instrumentName = "Soprano" shortInstrumentName = "S." }
                                                                                                                                                                                                                                                                                                            <<
                                                                                                                                                                                                                                                                                                                  \new Voice = "sopranos" { \sopranoMusic }
                                                                                                                                                                                                                                                                                                                        \new Lyrics \lyricsto "sopranos" { \sopranoWords }
                                                                                                                                                                                                                                                                                                                            >>
                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                    \new Staff \with { instrumentName = "Alto" shortInstrumentName = "A." }
                                                                                                                                                                                                                                                                                                                                        <<
                                                                                                                                                                                                                                                                                                                                              \new Voice = "altos" { \altoMusic }
                                                                                                                                                                                                                                                                                                                                                    \new Lyrics \lyricsto "altos" { \altoWords }
                                                                                                                                                                                                                                                                                                                                                        >>
                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                \new Staff \with { instrumentName = "Tenor" shortInstrumentName = "T." }
                                                                                                                                                                                                                                                                                                                                                                    <<
                                                                                                                                                                                                                                                                                                                                                                          \new Voice = "tenors" { \tenorMusic }
                                                                                                                                                                                                                                                                                                                                                                                \new Lyrics \lyricsto "tenors" { \tenorWords }
                                                                                                                                                                                                                                                                                                                                                                                    >>
                                                                                                                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                                                                                                            \new Staff \with { instrumentName = "Bass" shortInstrumentName = "B." }
                                                                                                                                                                                                                                                                                                                                                                                                <<
                                                                                                                                                                                                                                                                                                                                                                                                      \new Voice = "basses" { \bassMusic }
                                                                                                                                                                                                                                                                                                                                                                                                            \new Lyrics \lyricsto "basses" { \bassWords }
                                                                                                                                                                                                                                                                                                                                                                                                                >>
                                                                                                                                                                                                                                                                                                                                                                                                                  >>

                                                                                                                                                                                                                                                                                                                                                                                                                    \layout {
                                                                                                                                                                                                                                                                                                                                                                                                                        \context {
                                                                                                                                                                                                                                                                                                                                                                                                                              \Staff
                                                                                                                                                                                                                                                                                                                                                                                                                                    \override VerticalAxisGroup.staff-staff-spacing =
                                                                                                                                                                                                                                                                                                                                                                                                                                            #'((basic-distance . 8)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       (minimum-distance . 6)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  (padding . 1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                             (stretchability . 5))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       \midi { }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       