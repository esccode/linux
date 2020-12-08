#tmux
sudo apt-get install tmux

#wchodzimy
tmus

#podwojne okno
Ctrl+B
%
#podglad zmian w pliku
watch cat plik.sh

Vim Cheat Sheet
Globalny
•	:help keyword - otwórz pomoc dla słowa kluczowego
•	:saveas file - zapisz plik jako
•	:close - zamknij bieżący panel
•	K - otwórz stronę man dla słowa pod kursorem
Ruch kursora
•	h - przesuń kursor w lewo
•	j - przesuń kursor w dół
•	k - przesuń kursor w górę
•	l - przesuń kursor w prawo
•	H - przejdź na górę ekranu
•	M - przejdź na środek ekranu
•	L - przejdź na dół ekranu
•	w - przeskoczyć do przodu na początek słowa
•	W - przeskoczy do przodu na początek słowa (słowa mogą zawierać interpunkcję)
•	e - przeskoczyć do przodu na koniec słowa
•	E - przeskakuje do przodu na koniec słowa (słowa mogą zawierać znaki interpunkcyjne)
•	b - przeskocz do początku słowa
•	B - przeskoczyć do początku słowa (słowa mogą zawierać znaki interpunkcyjne)
•	%- przejdź do pasującego znaku (domyślne obsługiwane pary: '()', '{}', '[]' - użyj :h matchpairsw vim, aby uzyskać więcej informacji)
•	0 - przeskocz na początek linii
•	^ - przeskocz do pierwszego niepustego znaku linii
•	$ - przeskocz na koniec linii
•	g_ - przeskocz do ostatniego niepustego znaku linii
•	gg - przejdź do pierwszego wiersza dokumentu
•	G - przejdź do ostatniego wiersza dokumentu
•	5G - przejdź do linii 5
•	fx - przejście do następnego wystąpienia znaku x
•	tx - przeskocz do przed następnym wystąpieniem znaku x
•	Fx - przejście do wcześniejszego wystąpienia znaku x
•	Tx - przeskocz do poprzedniej obecności znaku x
•	; - powtórzyć poprzedni ruch f, t, F lub T
•	, - powtórzyć poprzedni ruch f, t, F lub T, do tyłu
•	} - przejście do następnego akapitu (lub funkcji / bloku, podczas edycji kodu)
•	{ - przejście do poprzedniego akapitu (lub funkcja / blok, podczas edycji kodu)
•	zz - środkowy kursor na ekranie
•	Ctrl+ e- przesuń ekran w dół o jedną linię (bez ruchomego kursora)
•	Ctrl+ y- przesuń ekran w górę o jedną linię (bez ruchomego kursora)
•	Ctrl+ b- cofnij się o jeden pełny ekran
•	Ctrl+ f- przejdź do przodu o jeden pełny ekran
•	Ctrl+ d- przejdź do przodu o 1/2 ekranu
•	Ctrl+ u- cofnij się o 1/2 ekranu
Porada Przedrostek polecenia przemieszczania kursora z numerem, aby go powtórzyć. Na przykład 4jprzesuwa się o 4 wiersze w dół.
Tryb wstawiania - wstawianie / dołączanie tekstu
•	i - wstawić przed kursorem
•	I - wstawić na początku linii
•	a - wstaw (dodaj) za kursorem
•	A - wstaw (dodaj) na końcu wiersza
•	o - dodaj (otwórz) nową linię poniżej bieżącej linii
•	O - dodaj (otwórz) nową linię powyżej bieżącej linii
•	ea - wstaw (dodaj) na końcu słowa
•	Esc - tryb wstawiania wyjścia
Redagowanie
•	r - zastąp jeden znak
•	J - dołącz linię poniżej do bieżącej z jednym odstępem pomiędzy
•	gJ - dołącz linię poniżej do bieżącej bez spacji pomiędzy
•	gwip - akapit reflow
•	cc - zmień (zastąp) całą linię
•	c$ - zmień (zamień) na koniec linii
•	ciw - zmień (zastąp) całe słowo
•	cw - zmień (zastąp) na koniec słowa
•	s - usuń znak i zamień tekst
•	S - usunąć linię i zastępczy tekst (tak jak cc)
•	xp - transponuj dwie litery (usuń i wklej)
•	u - Cofnij
•	Ctrl+ r- powtórz
•	. - powtórz ostatnie polecenie
Zaznaczanie tekstu (tryb wizualny)
•	v - uruchom tryb wizualny, zaznacz linie, a następnie wykonaj polecenie (np. y-yank)
•	V - rozpocząć tryb wizualny w trybie liniowym
•	o - przejdź na drugi koniec zaznaczonego obszaru
•	Ctrl+ v- uruchom tryb bloków wizualnych
•	O - przejdź do innego rogu bloku
•	aw - zaznacz słowo
•	ab - blok z ()
•	aB - blok z {}
•	ib - wewnętrzny blok z ()
•	iB - wewnętrzny blok z {}
•	Esc - wyjście z trybu wizualnego
Polecenia wizualne
•	> - przesuń tekst w prawo
•	< - przesuń tekst w lewo
•	y - szarpać (kopiować) zaznaczonym tekstem
•	d - usunąć zaznaczony tekst
•	~ - Sprawa przełącznik
Rejestry
•	:reg - pokaż zawartość rejestrów
•	"xy - włóż się do rejestru x
•	"xp - wklej zawartość rejestru x
Rejestry Tip są zapisywane w ~ / .viminfo i zostaną załadowane ponownie przy następnym restarcie vima.
Tip Register 0 zawiera zawsze wartość ostatniego polecenia Yank.
Znaki
•	:marks - lista znaków
•	ma - Ustaw aktualną pozycję dla znaku A
•	`a - skok do pozycji znaku A
•	y`a - przeciągnij tekst do pozycji znaku A
Makra
•	qa - zapisz makro a
•	q - zatrzymać makro nagrywania
•	@a - uruchom makro a
•	@@ - uruchom ponownie makro z ostatniego uruchomienia
Wytnij i wklej
•	yy - szarpnij (skopiuj) linię
•	2yy - szarpać (kopiować) 2 linie
•	yw - szarpać (kopiować) znaki słowa od pozycji kursora do początku następnego słowa
•	y$ - szarpać (kopiować) do końca linii
•	p - umieść (wklej) schowek po kursie
•	P - włóż (wklej) przed kursorem
•	dd - usuń (wytnij) linię
•	2dd - usuń (wytnij) 2 linie
•	dw - usuń (wytnij) znaki wyrazu od pozycji kursora do początku następnego słowa
•	D - usuń (wytnij) na końcu wiersza
•	d$ - usuń (wytnij) na końcu wiersza
•	x - usuń (wytnij) znak
Wychodzę
•	:w - zapisz (zapisz) plik, ale nie wychodź
•	:w !sudo tee % - zapisz bieżący plik za pomocą sudo
•	:wqlub :xlub ZZ- zapisz (zapisz) i zakończ
•	:q - quit (zawiedzie, jeśli są niezapisane zmiany)
•	:q!lub ZQ- zakończyć i wyrzucić niezapisane zmiany
•	:wqa - zapisz (zapisz) i zakończ na wszystkich zakładkach
Wyszukaj i zamień
•	/pattern - wyszukaj wzór
•	?pattern - wyszukaj w poszukiwaniu wzorca
•	\vpattern - wzór "bardzo magiczny": znaki niealfanumeryczne są interpretowane jako specjalne symbole regex (nie ma potrzeby ucieczki)
•	n - powtórz wyszukiwanie w tym samym kierunku
•	N - powtórz wyszukiwanie w przeciwnym kierunku
•	:%s/old/new/g - zastąp wszystkie stare nowymi w całym pliku
•	:%s/old/new/gc - zamień wszystkie stare na nowe w pliku z potwierdzeniami
•	:noh - usuń podświetlanie pasujących wyników wyszukiwania
Szukaj w wielu plikach
•	:vimgrep /pattern/ {file} - wyszukaj wzór w wielu plikach
na przykład :vimgrep /foo/ **/*
•	:cn - przejdź do następnego meczu
•	:cp - przejdź do poprzedniego meczu
•	:copen - otwórz okno zawierające listę dopasowań

==================================
=================================
#CUT and copy
move cursor to  selest 
press d to cut or y to copy
move to where you would to paste
press p to paste after



vi file
i # tryb edycji
esc # wyjscie z trybu

:x # wyjscie z zapisem
:q! # bez zapisu

Podstawowe komendy:
Wprowadzanie tekstu: a,i,A,i
Usuwanie tekstu: x (DEL), X (BACKSPACE)
Zapisywanie: ZZ, :w nowanazwa, :w
Wyjscie bez zapisywania :q! Dzialanie guzikow a oraz i:
Przesuwanie tekstu: l,k,j,h
Wstawianie linii: o
Kopiuj inie: yy
Wklej: p
Kasowanie linii: dd
Kasowanie do konca linii: D
Przesuwanie tekstu: $, 0, ^F, ^B, w, b,[[,]]
Wyszukiwanie: /
=======
VI Editing commands
i - Insert at cursor (goes into insert mode)
a - Write after cursor (goes into insert mode)
A - Write at the end of line (goes into insert mode)
ESC - Terminate insert mode.
u - Undo last change.
U - Undo all changes to the entire line.
o - Open a new line (goes into insert mode)
dd - Delete line
3dd - Delete 3 lines.
D - Delete contents of line after the cursor
C - Delete contents of a line after the cursor and insert new text. Press ESC key to end insertion.
dw - Delete word
4dw - Delete 4 words
cw - Change word
x - Delete character at the cursor
r - Replace character
R - Overwrite characters from cursor onward
s - Substitute one character under cursor continue to insert
S - Substitute entire line and begin to insert at the beginning of the line
~ - Change case of individual character
