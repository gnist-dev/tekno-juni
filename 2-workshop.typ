
#import "@preview/cetz:0.4.0"
#import "@preview/cetz-venn:0.1.4": venn3

= Gentag kontrollen


Kontrol og ejerskab af hardware gennem software.


== Problemerne som plager

Computere og mange devices plages af ejerskab- og kontrol problemer:

- Manglende transparens ind i softwaren
  - Overvågning og konfiguration
- _Right to repair_ og vedligeholdelse
  - Planned obsolescence
  - _Abandonware_#footnote[Software som er blevet
  efterladt af sine producenter, som fører til et limbo af
  utilgængelighed. Utilgængeligt for legal anskaffelse, udvikling
  og vedligeholdelse.]
  - End of life


== Computeren som system

Computere er komplekse i deres sammensætning, og er afhængige af store
socio-tekniske systemer for at kunne fungere og blive produceret.
Forsimplet forholder vi os til følgende, hvad angår vores
mulighed eller mangel deraf for kontrol:

+ Hardware
+ Operativ system
+ Userland#footnote[Userland (også kendt som userspace) er kode og programmer som kører udenfor styresystemets kernel. Det
dækker programmer rangerende fra bruger-programmer som en web-browser til baggrund processer og den grafiske brugerflade.]



== Windows 10's EOL

Det grælle ved ophøret af windows 10's sikkerheds opdateringer, er
udelukkelsen fra windows 11 ved TPM 2.0 kravet.


- Brugere og computere efterlades i støvet
- Eksponering til fare
- Klima byrden
  - Funktionel hardware udelukkes
  - Anskaffelsen af nyt hardware påtvinges


== Alternativet eller alternativerne?

Hvis man finder sig ramt af Windows 10's _EOL_ eller træt
af Big Tech udviklede operativ systemer.

- Erstat windows med et åbent operativ system
- Reduce, reuse, recycle - upcycle en gammel computer#footnote[Evt til
en server eller et dedikeret formål, som en retro spil konsol.]
- Omgå windows 11's krav#footnote[Det er muligt at omgå Microsoft's installations
krav ved at lave "registry edits". Man er dog i risiko for at ved opdatering
at skulle ligge og bøvle med at genopsætte disse "registry edits".]



== Åbne operativsystemer

Operativsystemer udviklet som opensource software.#footnote[Åbne også
i den forstand at de er åbne for modifikation og tilpasning.]

- Linux- og BSD-distributioner
- "_Demokratisering_" henover de sidste 10 år.

Hvad det åbner for af muligheder:
- Mulighed for et bedre ressource forbrug af hardware.
- At selv være i kontrol over styresystemet
- Undgå backdoors#footnote[Ved operativsystemer som MacOS og Windows har vi ingen mulighed for
at bekræfte eller afkræfte tilstedeværelsen af backdoors.]

== Hvad er en distribution?

I modsætning til Windows og MacOS, er der for linux flere forskellige
udbydere af "linux" styresystemer, som er indbyrdes forskellige i hensyn
til deres sammensætning:#footnote[Her rangeret efter relevans for
nye brugere/ikke-tekniske brugere.]

- Desktop Environment (Den grafiske brugerflade)
- _Target audience_ og brugscenarie#footnote[Samt hvilke design principper de følger for _User Experience_.]
- Community- eller firma-udviklede
- Opdateringssystem og pakke format

== Eksempler på brugerflader

#align(center, table(
  table.header([*KDE plasma*],[*Gnome*]),
  columns: 2,
  stroke: none,
  image("images/kde-plasma.png", width: 100%),
  image("images/gnome.jpg", width: 100%)
)
)

#align(center, table(
  table.header([*Hyprland*],[*Customized KDE*]),
  columns: 2,
  stroke: none,
  image("images/hyprland-example2.png", width: 100%),
  image("images/kde-alt.png", width: 100%)
)
)

== Eksempler på distributioner

Distributioner for general brug:
- _Stable release:_ Debian, ubuntu, linux mint, fedora, OpenSUSE
- _Rolling release:_ Arch, NixOS(unstable)

Distributioner med specialiserede brugsscenarier:
- Tails
- Whonix
- QubesOS
- Kali linux
 
// #align(center, table(
//   table.header(
//     // [*Opdatering frekvens*],
//     [*General use*],
//     [*Special use*]
//   ),
//   columns: 2,
//   // [Stable release],
//   [Debian, ubuntu, linux mint], [Tails, Whonix],
//   // [Stable release],
//   [Fedora, OpenSUSE], [],
//   // [Rolling release],
//   [Arch linux, NixOS(unstable)], [Tails, Whonix],

//   )
// )

== Øvelse - At boot fra en USB

Planen for idag:

- Boot en linux distribution fra en USB
- Gennemgang af det fagre nye operativ system

#align(right, image("images/usb.jpg", width: 6.5cm))

// == Et virtuelt laboratorie
== (Intermediate) øvelse - Et virtuelt laboratorie

Virtualbox er en software pakke for at håndtere og bruge _virtual
machines_.//#footnote[Virtual machines ofte forkortes til VM.] Trinene:

- Opsætning af en virtual machine
- Installation af en linux distribution
- Gennemgang af det fagre nye operativ system

#align(right, image("images/virtualmachines.jpg", width: 7.5cm))


== Afrunding


#align(center, cetz.canvas({
  import cetz.draw: *
  scale(3)
  venn3(
    name: "venn",
    not-abc-stroke: none,
    padding: 0cm,
  )
    content("venn.a", [#text(size: 15pt)[Klima]])
    content("venn.b", [#text(size: 15pt)[Ejerskab]])
    content("venn.c", [#text(size: 15pt)[Anti-overvågning]])
    content("venn.abc", [#text(size: 15pt)[Linux#footnote[... Og andre open source styresystemer]]])
})
)

== Næste gang: Onion Routing og Selfhosting

- Hvordan undgår man overvågning og censur på internettet?
  - Opsætning og brug af Tor
- Hvad er fordelene ved selv at hoste og have sin egen
  "server"?
  - Eksempler og hjælp til at starte begynder-projekter
  - Data-kooperativer som alternativ til Big Tech

#align(
  right,
  table(
    stroke: none,
    image("images/github-qr.png", height: 3.8cm), [#text("https://github.com/gnist-dev/tekno-juni", 14pt)]
  )
)
