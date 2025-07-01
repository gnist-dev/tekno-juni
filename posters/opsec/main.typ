#set text(font: "New Computer Modern", 15pt)
#set par(justify: true)
#set page(margin: (
    // top: 1cm,
    // left: 2cm,
    // right: 2cm,
    // bottom: 1cm,
    rest: 2cm
  )
)

// deactivate supplement and numbering figure captions
#show figure.caption: it => [
  #text(11pt, it.body)
]
#set figure.caption(separator: [])



#text(40pt)[Opsec]

#align(center,
image("sink ships.png", height: 13cm)
)


_Operational Security_ er en række af metoder, overvejelser og praksisser
for at vurdere overvågnings-trussler mod en, og for at vurdere hvilke
forsvarsmuligheder man har. Brugt af menneskerettigheds-fortalere,
aktivister, demonstranter, journalister, almindelige borgere, militære
enheder og mange andre til at forsvare information mod overvågning.


#table(
columns: 2,
fill: none,
stroke: none,
[
  Hvis du ønsker at kunne forsvare dig selv mod overvågning, så
  kom og deltag i workshoppen, *lørdag d. 7. juni*,
  du kan du læse mere om begivenheden på på dukop.dk
],
[
  #figure(supplement: "",  caption: [Se mere på dukop.dk])[#image("qr-code.png", width: 4cm,)]
]
)

