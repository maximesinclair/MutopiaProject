\version "2.16.1"
\include "clementi-op42-mus-L20-air-fal-lal-la.ily"

% LESSON XIX. Fal, lal, la.  Air in The Cherokee.

\book {   \bookOutputName "clementi-op42-les20-air-fal-lal-la"
  \score {
    \unfoldRepeats
    \new PianoStaff <<
      \new Staff = "upper" \LessonXXUpper
      \new Staff = "lower" \LessonXXLower
    >>
    \midi { }
  }
}
