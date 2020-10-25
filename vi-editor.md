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
