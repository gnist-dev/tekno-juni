
#import "@preview/herodot:0.1.0": *

== OPSec

_Operations security_


- Forsvars strategier og metoder

== Hvorfor kan det være relevant for dig?


- Omgørelsen af Roe V. Wade og cyklus-app
- Aktivistiske og politisk engagment kræver
  muligheden for privatliv og undgåelsen
  af overvågning


Data akkumulation og profil opbygning


== Trussel modeller

- *hvad* skal jeg holde hemmeligt?
- *hvem* skal jeg holde det hemmeligt fra?
- *hvilke* risikoer er jeg villig til at tage?



#let spectrum = timeline(
  startyear: 0,
  endyear: 10,
  interval: 5,

  events: (
    event(year: 0, title: "Brugervenlighed"),
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

Hemmeligholdelsen af information


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

== Data


#align(center)[
  #table(
    columns: 2,
    table.header([*Stationær*], [*Transit*]),
    [Lokal data på harddrives og devices.], [Data der transporteres mellem devices.],
    [Enkryption af harddrives og filer], [End-to-end enkryption],
    [Fysisk angreb (tyveri)], [Man-in-the-middle (MITM) og _compromised_ modtager],
  )
]


== Fysisk sikkerhed og _threat actors_
#align(center,
  figure(
    image("xkcd-security.png"),
    caption: [xkcd, Security. https://xkcd.com/538/]
  )
)

== Kildehenvisning

#bibliography("refs.bib", style: "chicago-notes")
