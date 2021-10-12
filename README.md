# Voorkennis

- [Basiskennis van Linux](https://github.com/informaticawerktuigen/oefenzitting-linux)
- [Werkende Linux-omgeving](https://github.com/informaticawerktuigen/klaarzetten-werkomgeving)


# Starten

In deze oefenzitting leren we werken met LaTeX. LaTeX is een systeem waarmee we op een eenvoudige manier complexe PDF's kunnen genereren.


## Gebruik van container (optioneel)

In één van de vorige oefenzittingen hebben we gewerkt met containers.
Zo heb je ook voor het compileren van LaTeX-bestanden de optie om gebruik te maken van containers.
Dit zou bijvoorbeeld nuttig kunnen zijn wanneer je op een Windows-computer gemakkelijk LaTeX wilt compileren zonder te moeten switchen naar Linux.
(Er bestaan ook Windows-programma's die LaTeX compileren, maar in dit vak werken we zoveel mogelijk met UNIX-systemen).
**Jullie zijn vrij om te kiezen of jullie in deze oefenzitting gebruik willen maken van containers.
Indien niet, ga dan verder naar de volgende sectie.**

Met behulp van onderstaand commando kan je een interactieve sessie starten in een container waar alle benodigde LaTeX-packages op zijn geïnstalleerd.
**Voer dit commando uit wanneer je de opgave hebt gedownload en je je in de directory van deze opgave bevindt (uitgelegd in de volgende sectie).**
Dit laatste is belangrijk omdat het commando gebruik maakt van je relatieve pad.


### UNIX (Linux / MacOS)
```bash
sudo docker run -it -v $(pwd):/app --rm --entrypoint /bin/bash ghcr.io/informaticawerktuigen/latex-compiler
```


### Windows (PowerShell)
```bash
sudo docker run -it -v ${PWD}:/app --rm --entrypoint /bin/bash ghcr.io/informaticawerktuigen/latex-compiler
```

_Wanneer je dit commando voor het eerst uitvoert, zal de container image eerst gedownload worden (+/- 2.5 GB). Bijgevolg kan dit enkele minuten in beslag nemen._


## Opgave downloaden

De opgave van deze oefenzitting is een PDF-bestand dat jullie zelf moeten genereren. Doe dit door:

- De repository van deze oefenzitting te clonen naar je machine

```shell
git clone https://github.com/informaticawerktuigen/oefenzitting-latex.git
```

- In een terminal te navigeren naar de folder van deze repository en vervolgens het bestand `opgave.tex` te **compileren**. Dit doe je door het `pdflatex`-commando uit te voeren, met als argument het bestand `opgave.tex`:

```shell
cd oefenzitting-latex
pdflatex opgave.tex
```

Dit commando genereert een PDF-bestand genaamd `opgave.pdf`. Het PDF-bestand is de opgave voor deze oefenzitting.

- Open dit bestand met `evince` (of een andere PDF-viewer naar keuze) en werk de oefenzitting verder af:

```shell
evince opgave.pdf
```

**Belangrijk!** Als je in een container werkt, zal je het gegenereerde PDF-bestand met een PDF-viewer op je host OS moeten openen. Dit kan niet getoont worden vanuit de container.