
#import "@preview/herodot:0.1.0": *

== OPSec

_Operations security_ kan tænkes som en række af overvejelser
og praksisser som man gøre sig for at forsøge at garantere
(informations-)sikkerheden af en aktivitet overfor fjendtlige aktørere.


- Forsvars strategier og metoder
- Trussels modeller, _threat actors_, praksisser og protokoller

== Hvorfor kan det være relevant for dig?


- Omgørelsen af Roe V. Wade og cyklus-app
- Aktivistisk og politisk engagment gavner af
  muligheden for privatliv og undgåelsen
  af overvågning
- Du vil have kontrol over din egen data#footnote[Eks. kan der være
ting som du synes ikke rager andre end dine venner.]


Data akkumulation og profil opbygning


== Trussels modeller - din, min, vores

- *hvad* skal jeg holde hemmeligt?
- *hvem* skal jeg holde det hemmeligt fra?
- *hvilke* risikoer/ulejligheder er jeg villig til at tage?



#let spectrum = timeline(
  startyear: 0,
  endyear: 10,
  interval: 5,

  events: (
    event(year: 0, title: ["_Brugervenlighed_"]),
    event(year: 10, title: "Sikkerhed"),
    
  )
)


#align(center, spectrum)


== Software og kildekode

#align(center)[
#table(
  columns: 2,
  table.header([*Closed source*], [*Open source*]),
  [Kildekoden er privat-ejet og utilgængelig for brugeren], [Kildekoden er tilgængelig for brugere til at modificiere, redistribuere og bruge],
  [Licenser som EULA, og er under copy-right], [Er licenseret under enten en permissive eller defensiv licens,#footnote[Gnu Public License (GPL) er et eksempel på en defensiv licens som garantere at alle kopiere af koden forbliver under samme licens, mens at permissive licenser tillader ændring af licensen.] og er eksempler på copy-left],
)
]


== Enkryption

Hemmeligholdelsen af information ved at konvertere information fra _plain
text_ til _cipher text_, således at kun de tiltænkte kan få adgang
til informtionen ved dekryption.


#align(center)[
  #table(
    columns: 2,
    table.header([*Symmetrisk*], [*Asymmetrisk*]),
    [Eks. en passphrase, $p$], [Public-Private keypair $ "keypair" = ( "pub" ; "private" )  $],
    [Enkryption og dekryption er bundet til en værdi], [Opdeling af processer],
    [], [Enkryption, signature og validering],
    // [$ A -> B $], [ ]
    )
]

== End-to-end enkryption

Mange ting er idag krypteret mellem bruger og server,#footnote[De
fleste web-tjenester idag bruger alle https til at garantere sig selv
mod man-in-the-middle angreb.] men det som man skal holde øje med er
om det krypteret _end-to-end_.

- Fra afsender til modtager enkrypteret hele vejen.
- Værktøjs eksempel:
    - GPG oven på email
    - signal, simplex, briar


#align(center,
  figure(
    image("images/wikipedia-End-to-End_Encryption.png", height: 12cm, ),
    caption: [Wikipedia's illustration af e2ee.]
  )
)

== Data


#align(center)[
  #table(
    columns: 2,
    table.header([*Stationær*], [*Transit*]),
    [Lokal data på harddrives og devices.], [Data der transporteres mellem devices.],
    [Enkryption af harddrives og filer], [End-to-end enkryption],
    [Fysisk angreb (tyveri)], [Man-in-the-middle (MITM)#footnote[I tilfælde
    af at man ikke har kunne bekræfte med sin modtager offline eller på en sikker
    kanal, kan man være i risiko hvis platformen agere malicious.] og _compromised_ modtager],
  )
]

== Metadata

Data om anden data. I tilfælde af tjenester med en central
aktør eks. signal og protonmail:

- Tidspunkter, IP-addresser, modtager og afsender

Minimere mængden af metadata:

- Brug af overlay netværk (eks. Tor, VPN)
- Tjenester uden krav for konto oprettelse
- Peer-to-peer eller multi-node systemer#footnote[Her er det et tilfælde
af at gøre det svære for en enkelt observatør at danne sig et overblik,
hvis flere noder er i _kahoots_ eller samarbejder kan de få adgang
til at danne sig en metadata profil som fra centrale tjenester.]

== Fysisk sikkerhed og _threat actors_
#align(center,
  figure(
    image("images/xkcd-security.png"),
    caption: [xkcd, Security. https://xkcd.com/538/]
  )
)

== _No silver bullets_

#align(center,
  // figure(
    image("images/silverbullet.jpeg", width: 13cm),
    // caption: []
  // )
)

== Når uheldet er ude

#align(center,
  table(
    columns: 2,
    table.header([*Uheld*], [*Plastre*]),
    [Data leaks ved en service], [e2ee], 
    [Zero day], [Sandboxing],
    [Fysisk konfiskation], [Enkrypterede backups, sletningspraksis],
    [Internet shutdowns], [Radio, LoRa, Bluetooth],
    [Backdoors], [...]
  )
)

== _Retention_#footnote[Bevaring, opretholdelse, tilbageholdelse.] praksis

... mellem bevaring og at slette. Et spænd mellem datahoarding og ingenting.

- Sikkerhedshorisonter over tid.
- Data følsomhed og brugbarhed.#footnote[Både for sig selv og for trussels aktørere.]

== Identitets hygiene på online tjenester

Data akkumulation og -korelation kan bruges
til at opbygge en profil af brugeren.

- Variation af brugernavne
- Udskiftning af brugernavne og sletning af konti
- Flere forskellige identiteter

Værktøjer:

- En god (offline) password manager#footnote[Det er svært at huske mange forskellige
brugernavne og kodeord, og vi er generelt dårlige til det især at lave mange
forskellige og lange kodeord som er svære at gætte. Password managers
er gode værktøjer hertil.] 

== Kommunikations kanaler

- Hvor mange?
  - _Single-point of failure_ kontra distribueret risiko
- Hvad slags? 
  - officielle, hemmelige, chat#footnote[Om det eks. er single-lane eller multi-lane chat-tjenester.], message-boards, etc.?
- Backup planer i tilfælde af blackout?



== Øvelse - Kortlægning

Snak sammen i grupper og kortlæg følgende for jeres gruppe:

- Hvad skal I holde hemmeligt?
  - Er noget information vigtigere end andet?
- Hvem er jeres _threats actors_?
- Hvordan kan I holde det hemmeligt?
  - hvilke værktøjer og praksisser?

I kan bruge EFF's Surveillance Self-Defense#footnote[Electronic Frontier
Foundation's Surveillance Self-Defense guide https://ssd.eff.org]
som inspiration.

== Afrunding

Online ressourcer:

- Electronic Frontier Foundation's Surveillance Self-Defense (SSD)#footnote[https://ssd.eff.org]
- The Tor Project's hjemmeside og support-FAQ#footnote[https://support.torproject.org/]

Vær opmærksom på ikke at få _security fatigue_ og at falde i "OPSec"
rabbit-holes på youtube.#footnote[At blive bevidst om sikkerheds
hensyn skal helst ikke føre til at man bliver udbrændt eller irrationel paranoia
som ødelægger ens dag.]

== Næste gang: Gentag kontrollen

- Right to repair og ejerskab
- Klima konsekvenser
- Åbne operativsystemer som løsning#footnote[Medbring gerne en USB-nøgle og en bærbar til workshop'en.]

#align(
  right,
  table(
    stroke: none,
    image("images/github-qr.png", height: 4cm), [#text("https://github.com/gnist-dev/tekno-juni", 14pt)]
  )
)

// == Kildehenvisning

// #bibliography("refs.bib", style: "chicago-notes")
