
#import "@preview/herodot:0.1.0": *

== OPSec

_Operations security_


- Forsvars strategier og metoder

== Hvorfor er det relevant for os?


- Omgørelsen af Roe V. Wade og cyklus-app
- Aktivistiske og politisk engagment kræver
  muligheden for privatliv og undgåelsen
  af overvågning


Data akkumulation


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


== Open source og enkryption




== Kildehenvisning

#bibliography("refs.bib", style: "chicago-notes")
