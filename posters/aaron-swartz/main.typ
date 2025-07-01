
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

#text(37pt)[The Internet's Own Boy]

#align(center,
image("aaron2.png", height: 10cm)
)


Aaron Swartz var en amerikansk programmør, forfatter, politisk organizer
og hackivist. Swartz var med til at udvikle diverse standarder som vi
bruger den dag idag, og spillede også en tidlig rolle i udviklingen
af Creative Commons. Swartz gik ind for at et åbent samfund, og fri
adgang til viden, som en del af dette så han at bryde de akademiske
forlag's monopol på akademisk viden, viden som oftest er betalt for med
skatte-penge, og efterfølgende privatiseret bag forlagenes' paywalls og
gjort utilgængelige for offentligheden. Swartz's forsøg på at åbne
op adgang til den viden som JSTOR har privatiseret, ledte til en retssag
hvori at den amerikanske stat idømte ham til en bøde på 1 million
amerikanske dollars, og 50 års fængsel. Dette drev Swartz til selvmord.


#table(
columns: 2,
fill: none,
stroke: none,
[
  Kom og se dokumentaren om Aaron Swartz' liv og virke. Der
  vil før filmen starter være et kort oplæg om fri viden, pirateri,
  tor og selfhosting. Kom frisk.
],
[
  #figure(supplement: "",  caption: [Se mere på dukop.dk])[#image("qr-code.png", width: 3cm,)]
]
)

