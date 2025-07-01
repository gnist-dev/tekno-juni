#set text(font: "New Computer Modern", 14pt)
#set par(justify: true)
#set page(margin: (
    top: 0.8cm,
    // left: 2cm,
    // right: 2cm,
    bottom: 0.8cm,
    rest: 2cm
  )
)

// deactivate supplement and numbering for figure captions
#show figure.caption: it => [
  #text(11pt, it.body)
]
#set figure.caption(separator: [])


#text(32pt)[Tekno Juni]


#align(center,image("punk.png", width: 11.5cm)
)

#align(center, block(
width: 90%,
[
*OPsec* - Kom og hør om _operational security_, praksisserne og
modellerne for at vurdere sin sikkerhed mod overvågning. *Lørdag
d. 7. juni*


*Gentag kontrollen over din computer* - d. 14. oktober 2025 stopper Microsoft
med at udgive sikkerhedsopdateringer til Windows 10, og det vil føre til, at
millionvis af computere globalt bliver udelukket fra opdateringer
og sikkerhed, fordi Microsoft også udelukker dem arbitrært fra Windows 11.
Kom og hør om alternativet til Windows og "Big Tech"-monopolernes
overvågning. Tag magten over din computer tilbage og vær med til at undgå
klima-skadelig adfærd.
*Lørdag d. 14. juni*

*The Onion Router og Selfhosting* - Workshop om TOR og selfhosting. Kom og
lær om at bruge TOR til at beskytte dig selv mod overvågning, og selfhosting til
at få kontrol over din egen data. *Lørdag
d. 21. juni*


*_The internet's Own Boy_* - Vi ser dokumentaren om Aaron Swartz,
som var en amerikansk programmør, forfatter, politisk organizer og
internet-aktivist. *Lørdag d. 28. juni*

#h(3cm)

*Se mere på dukop.dk*

// *Eller skriv en email til *
])
)
