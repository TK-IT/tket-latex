`tket` TÅGEKAMMER-relaterede ting til LaTeX
===========================================

# Installation
<!--- Når du opdater denne sektion, må du også gerne opdatere den samme sektion i dokumentationen -->
Den letteste måde at installere pakken er at få fat i zip-filen
`tket.tds.zip`, som indeholder alle de nødvendige filer. Den nyeste
version kan hentes fra https://github.com/TK-IT/tket-latex/releases.

Den skal du pakke ud i roden af et lokalt texmf-træ. Hvor og hvordan
du finder den mappe afhænger af din TeX-distribution (TeX Live/MacTeX/MiKTeX).

## TeX Live eller MacTeX
Hvis du
bruger [TeX Live](http://www.tug.org/texlive/doc/texlive-en/texlive-en.html#x1-380003.4.7)
på Windows er den rigtige mappe formentlig noget i retning af
`%USERPROFILE%\texmf`.

På et Linux-agtigt system er det formentlig `~/texmf`.

På macOS er [det formentligt](http://www.tug.org/mactex/faq/#qm04) `~/Library/texmf`.

Du kan forvisse dig om den rigtige værdi ved at køre kommandoen
`kpsewhich -var-value TEXMFHOME` i en terminal.

Når du har pakket zip-filen ud skal fildatabasen opdateres. Det gøres
lettest ved at udføre kommandoen `mktexlsr`. På Windows er
der måske en grafisk måde at gøre det på.

## MiKTeX

Keine Ahnung.

# Dokumentationen
Dokumentationen følger med og du kan finde den ved at køre `texdoc tket` i en
terminal. Foretrækker du at læse dokumentationen online, er den også
[tilgængelige her](https://github.com/TK-IT/tket-latex/blob/master/doc/tket-doc.pdf).
Vær opmærksom på at den online dokumentation ikke nødvendigvis passer til den
version af pakken du har installeret.

# Build systemet
Makefilen kompilere dokumentationen og pakker alle de nødvendige filer som
`tket.tds.zip`.

## Udgivelse af en ny version
- Opdater dato og versionsnummer i `src/tket.sty`.
- Skriv ændringerne nederst i changenloggen i `doc/tket-doc.tex`.
- `make` en ny `tket.tds.zip`.
- Commit (også `doc/tket-doc.pdf`) og giv det et nyt `git tag` der passer.
- Lav et nyt release
  på [github](https://github.com/TK-IT/tket-latex/releases/new) hvor du også
  uploader den nye `tket.tds.zip`.
