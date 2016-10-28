This fork of [Esrille New Keyboard](https://github.com/esrille/new-keyboard) aims at replacing the Dvorak, Colemak and Japanese original layouts by european keyboards layouts.  


The following layouts are planned:
 - Azerty
 - Bépo
 
 
A few other modifications regarding the non-alphanumeric keys are also planned:
 - Replace 'Caps Lock' by 'Del'
 - Move 'Insert' closer to the center (used by Resharper and Mintty)
 - Find a better use than F13-F14 for fn+B, fn+N
 - Find a way to perform an Alt+Shift+arrow combo (used to make rectangular selection)
 - Find a way to perform a Ctrl+Alt+Shift+arrow combo (used to move things around in Resharper, Notepad++)

Azerty base layer:
```
|     | F1  | F2  | F3  | F4  | F5  | F6  |     |     | F7  | F8  | F9  | F10 | F11 | F12 |     |
|     |     | 1&  | 2é~ | 3"# | 4'{ | 5([ |     |     | 6-| | 7è` | 8_\ | 9ç^ | 0à@ |     |     |
| ¨^  | $£  |  A  |  Z  |  E  |  R  |  T  | ESC |MENU |  Y  |  U  |  I  |  O  |  P  | °)] | +=} |
| ²~  | Del |  Q  |  S  |  D  |  F  |  G  | TAB |ENTR |  H  |  J  |  K  |  L  |  M  | %ù  | µ*  |
|     |Ctrl |  W  |  X  |  C  |  V  |  B  |     |     |  N  | ?,  | .;  | /:  | §!  |Ctrl |     |
|     |     | WIN | FN  | MAJ | <-  | ALT |     |     |AltGr|Space| MAJ | FN  | WIN |     |     |
```

Azerty FN layer

Original
```
|     |     |     |     |     |     |     |     |     |     |     |     |     |     |     |     |
|     |     |     |     |     |     |     |     |     |     |     |     |     |     |     |     |
|     |     |     |     |     |     |     |     |     |     |     |     |     |     |     |     |
|     | Del |     |     |     |     |     |     |     |     |     |     |     |     |     |     |
|     |     |     |     |     |     | F14 |     |     | F13 |     |     |     |     |     |     |
|     |     | WIN | FN  | MAJ | <-  | ALT |     |     |AltGr|Space| MAJ | FN  | WIN |     |     |
```

Current
```
|     |     |     |     |     |     |     |     |     |     |     |     |     |     |     |     |
|     |     |     |     |     |     |     |     |     |     |     |     |     |     |     |     |
|     |     |     |     |     |     |     |     |     |     |     |     |     |     |     |     |
|     | CAPS|     |     |     |     |     |     |     |     |     |     |     |     |     |     |
|     |     |     |     |     |     |  <  |     |     |  >  |     |     |     |     |     |     |
|     |     | WIN | FN  | MAJ | <-  | ALT |     |     |AltGr|Space| MAJ | FN  | WIN |     |     |
```

Proposed changes, base layer:
 - Swap 'Del' and 'Menu', putting 'Del' closer to the center and under the right index.

Proposed changes, FN layer:
 - move 'Ctrl + Del' to the same key as 'Del', if it is moved in the base layer
 - put '<' and '>' somewhere else (like ²~), possibly on the same key (like on the regular Azerty).
 - use 'FN + 6' as Ctrl + Shift + Home
 - use 'FN + 0' as Ctrl + Shift + End
 - use 'FN + N' as Shift + Home
 - use 'FN + B' as Ctrl + B, or Ctrl + Shift + B
 - use 'FN + Del' for something ?
 - replace 'Pause' with something actually useful ?
 - replace 'Scroll Lock' with something actually useful ?
 - replace 'Ctrl + Shift + Z' with something actually useful ?
 - put 'Insert' somewhere else ? maybe even on the base layer ? (used with Resharper for 'Alt+Ins', Mintty for 'Ctrl+Ins' and 'Shift+Ins')
