# Voorkennis

- [Basiskennis van Linux](https://github.com/informaticawerktuigen/oefenzitting-linux)
- [Werkende Linux-omgeving](https://github.com/informaticawerktuigen/klaarzetten-werkomgeving)

# Starten

In deze oefenzitting leren we werken met LaTeX. LaTeX is een systeem waarmee we op een eenvoudige manier complexe PDF's kunnen genereren.

De opgave van deze oefenzitting is een PDF-bestand dat jullie zelf moeten genereren. Doe dit door:

- De repository van deze oefenzitting te clonen naar je machine

```shell
git clone https://github.com/informaticawerktuigen/oefenzitting-latex.git
```

- In een terminal te navigeren naar de folder van deze repository en vervolgens het `pdflatex`-commando uit te voeren, met als argument het bestand opgave.tex:

```shell
cd oefenzitting-latex
pdflatex opgave.tex
```

Dit commando genereert een PDF-bestand genaamd opgave.pdf. Het PDF-bestand is de opgave voor deze oefenzitting.

- Open dit bestand met `evince` en werk de oefenzitting verder af

```shell
evince opgave.pdf
```
