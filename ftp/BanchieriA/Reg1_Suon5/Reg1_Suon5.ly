% Updated to Lilypond 2.2.5 by Ruud van Silfhout <Ruud.vanSilfhout@mutopiaproject.org>
% convert-ly -> Lilypond 2.4.1 by Chris Sawer <chris@mutopiaproject.org>
% Last changed on 7/Nov/2004

#(ly:set-option 'old-relative)
\version "2.4.0"
\header {
	title = "SUONATA QUINTA, FVGA HARMONICA"
	subtitle = "From Primo Registro of the Organo Suonarino"
	instrument = "Organ"
	%piece = "SUONATA QUINTA, FVGA HARMONICA"
	maintainer = "Giampaolo Orrigo"
	composer = "Adriano Banchieri"
	mutopiatitle = "SUONATA QUINTA, FVGA HARMONICA From Primo Registro of the Organo Suonarino"
	mutopiacomposer = "BanchieriA"
	mutopiainstrument = "Organ"
	date = "1605"
	source = "Urtext"
	style = "Baroque"
	copyright = "Public Domain"
	filename = "Reg1_Suon5.ly"
	editor = "Ricciardo Amadino, Venezia, 1605"
	maintainerEmail = "orrigo.gp@rosenet.it"
	lastupdated = "2004/Nov/07"

	footer = "Mutopia-2004/11/07-35"
	tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"	
}

mensuralBreveNote = { \once \override NoteHead #'style = #'neomensural }

soprano =  \relative c'' \context Voice = "soprano" {
	\set Staff.midiInstrument = "church organ"
	\voiceOne
	c1 c2 c |
	a4 f a b c2 d |
	c2 a f4 e f g |
	a4 b c2. b8 a b2 |
	c1 g |
	a1 r1 |
	r\breve |
	r\breve |
	c1 c2 c |
	a4 f a b c2 a4 b |
	c2 a d2. c8 b |
	a2 g4 f g1 |
	a1 r2 a |
	a2 a f4 e f g |
	a8 g a b c1 b2 |
	c2 g r g |
	a4 g a b c2 c,4 d |
	e4 g f2. e8 d e2 |
	f1 r2 a |
	a2 a f4 d f g |
	\mensuralBreveNote a\breve
	\bar "|."
}
contralto =  \relative c' \context Voice = "contralto" {
	\set Staff.midiInstrument = "church organ"
	\voiceTwo
	r\breve |
	r1 r2 f2 |
	f2 f d4 c d e |
	f4 g a g8 f g1 |
	c,4 d e f e1 |
	f1 r1 |
	r\breve |
	r\breve |
	r\breve |
	r1 f1 |
	f2 f d4 c d e |
	f2 e4 d e1 |
	\mensuralBreveNote f\breve |
	r\breve |
	r2 g g g |
	e2. c4 e d e f |
	e2 f e2. d4 |
	g,4. c8 a2 c1 |
	c1 r2 f |
	f2 f d4 bes d e |
	\mensuralBreveNote f\breve
	\bar "|."
}
tenore =  \relative c' \context Voice = "tenore" {
	\set Staff.midiInstrument = "church organ"
	\voiceOne
	r\breve |
	r\breve |
	r\breve |
	r\breve |
	r2 c2 c c |
	a4 f a b c2 d |
	c2 a f4 e f g |
	a b c b8 a b4 c2 b4 |
	c4 b a g a g f e |
	\mensuralBreveNote f\breve |
	r\breve |
	c'1 c2 c |
	a4 f a b c2 d |
	c2 a d1 |
	c2 e d1 |
	c1 g |
	r2 a a a |
	e2 f g1 |
	a2 a a a |
	d2 c f,1 |
	\mensuralBreveNote c'\breve
	\bar "|."
}
basso =  \relative c \context Voice = "basso" {
	\set Staff.midiInstrument = "church organ"
	\voiceTwo
	r\breve |
	r\breve |
	r\breve |
	r\breve |
	r\breve |
	r1 r2 f |
	f2 f d4 c d e |
	f4 g a g8 f g4 e f g |
	c,1 r1 |
	r\breve |
	r\breve |
	r\breve |
	r1 f |
	f2 f d4 c d e |
	f2 c8 d e f g2 g, |
	c1 c2 c |
	a2 f a4 g a b |
	c2 d c1 |
	f,2 f' f f |
	d2 a bes1 |
	\mensuralBreveNote f\breve
	\bar "|."
}
\score {
	\context PianoStaff  << 
		\context Staff = "top" << \time 4/2
			\soprano
			\contralto
		>>
		\context Staff = "bottom" << \time 4/2
			\clef bass
			\tenore
			\basso
		>>
	>>
	\midi {
		\tempo 2 = 70
	}
	\layout {
	}
}
	
