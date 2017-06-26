`tket` TÅGEKAMMER-relaterede ting til LaTeX
===========================================

# Installation
<!--- Når du opdater denne sektion, må du også gerne opdatere den samme sektion i dokumentationen -->
## TeX Live eller MacTeX
For at installere pakken skal du gøre følgende ting:

* Hent `tket.tds.zip`
* Pak den ud i dit lokale `TEXMF`-træ
* Opdaterer fildatabasen

### Hent `tket.tds.zip`
`tket.tds.zip` indeholder alle de nødvendige filer. Den nyeste version kan altid
hentes fra https://github.com/TK-IT/tket-latex/releases.


### Pak `tket.tds.zip` ud i dit lokale `TEXMF`-træ
Dit lokale `TEXMF`-træ er et mappetræ hvor TeX Live finder de pakker du selv
har installeret. Formenligt findes det et af følgende steder:

- **Windows**: Hvis du bruger [TeX Live](http://www.tug.org/texlive/doc/texlive-en/texlive-en.html#x1-380003.4.7) på
Windows er den rigtige mappe sikkert:
`%USERPROFILE%\texmf`. Det vil sige at hvis din bruger hedder `Hænger` er stien
`C:\Brugere\Hænger\texmf\`.

- **Linux**: På et Linux-agtigt system er det `~/texmf`.

- **macOS**: På macOS [er det](http://www.tug.org/mactex/faq/#qm04) `~/Library/texmf`.

Hvis det ikke findes, eller du har ændret opsætningen, kan du forvisse dig om
den rigtige værdi ved at køre kommandoen `kpsewhich -var-value TEXMFHOME` i en
terminal.

`tket.tds.zip` skal pakkes ud i roden af dit lokale `TEXMF`-træ. Det kan du
gøre ved at ligge filen i overnævte mappe og måske dobbetklikke på den.
Alternativt kan du i en terminal på en unix-ligende system skrive `unzip
tket.tds.zip`.


### Opdater fildatabasen
TeX Live har en database over alle filer så den (hurtigt) kan finde pakker. For
at opdatere den udføres kommandoen `mktexlsr` i en terminal. På unix-ligende
systemer er de måske nødvendigt at køre den med `sudo`: `sudo mktexlsr`.

Du skulle nu være klar til at bruge `tket` i dine LaTeX-dokumenter.


## MiKTeX

Prøv at se [i MikTeX dokumentationen](http://docs.miktex.org/manual/localadditions.html).


# Dokumentationen
Dokumentationen følger med og du kan finde den ved at køre `texdoc tket` i en
terminal. Foretrækker du at læse dokumentationen online, er den også
[tilgængelig her](https://github.com/TK-IT/tket-latex/blob/master/doc/tket-doc.pdf).
Vær opmærksom på at dokumentationen på nettet ikke nødvendigvis passer til den
version af pakken du har installeret.

# Build-systemet
Makefilen kompilerer dokumentationen og pakker alle de nødvendige filer som
`tket.tds.zip`.

## Udgivelse af en ny version
- Opdater dato og versionsnummer i `src/tket.sty`.
- Skriv ændringerne nederst i changenloggen i `doc/tket-doc.tex`.
- `make` en ny `tket.tds.zip`.
- Commit (også `doc/tket-doc.pdf`) og giv det et nyt `git tag` der passer.
- Lav et nyt release
  på [github](https://github.com/TK-IT/tket-latex/releases/new) hvor du også
  uploader den nye `tket.tds.zip`.
