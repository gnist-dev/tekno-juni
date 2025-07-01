#set text(font: "New Computer Modern", 15pt)
#set par(justify: true)
#set page(margin: (
    top: 1cm,
    left: 2cm,
    right: 2cm,
    bottom: 1cm,
  )
)


#text(40pt)[End of life]

#align(center,
image("windows-endoflife.png", height: 14cm)
)


// deactivate supplement and numbering for figure captions
#show figure.caption: it => [
  #text(11pt, it.body)
]

#set figure.caption(separator: [])


Fra den 14. oktober 2025 stopper Microsoft med at udgive sikkerheds
opdateringer til Windows 10, og globalt vil millioner af funktionelle
computere blive gjort forældet via udelukkelsen fra software. Microsoft
opfordre ejere af disse til at købe nye computere for at få
adgang til Windows 11. Der er ikke en teknisk begrænsning for at disse
computere skulle kunne opdateres til Windows 11, begrænsningen er skabt
af Microsoft for profit- og magtmotiv.
#v(-2mm)

#table(
columns: 2,
fill: none,
stroke: none,
[
Hvis du ønsker at beholde og fortsætte med at bruge din nuværende
computer uden at gå glip af sikkerheds opdateringer og tage magten over
_din_ computer tilbage, _eller_ at du ønsker at undgå klima-skadelig
adfærd, så kom og hør om alternativerne til Windows og Microsofts
plan om at gøre din computer ubrugelig.],
[
  #figure(supplement: "",  caption: [Se mere på dukop.dk])[#image("qr-code.png", width: 4cm,)]
]
)


