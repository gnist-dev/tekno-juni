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

// deactivate supplement and numbering for figure captions
#show figure.caption: it => [
  #text(11pt, it.body)
]
#set figure.caption(separator: [])


#text(32pt)[The Onion Router og Selfhosting]

#align(center,
image("selfhost2.png", height: 10cm)
)


TOR-netværket er et globalt netværk af computere som udgør et
annonymiserings-netværk som helt almindelige mennekser, aktivister,
demonstranter og menneskerettighedskæmpere bruger til at undgå
overvågning og censur. _Selfhosting_ er prakssisen af at selv at køre
og administrere de IT-tjenester som man bruger, de kører på en computer
som fungere som en server man selv har kontrol over.

#v(-3mm)

#table(
  columns: 2,
  fill: none,
  stroke: none,
  
[  Gennem selfhosting muliggøres
  privatlivsbeskyttelse og kontrollen over ens data i _egne_ hænder
  fremfor at det er et produkt som store tech-firmaer sælger til andre.
  Det er et _alternativ_ til at være afhængig af "Big tech"-monopolerne
  og at være i deres vold. Tjenesterne tilgængelige ved selfhosting er
  billigere og ofte bedre end de kommercielle tilbud, som er blevet
  _enshitified_ som en del af firmaernes profit-maksimering.],
  [
    #figure(supplement: "" , image("qr.png", width: 6cm), caption: [Se mere på dukop.dk])  ]
)


