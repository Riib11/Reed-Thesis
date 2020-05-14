eatletter_template_pre = """\makeatletter
  \lst@InputCatcodes
  \def\lst@DefEC{%
   \lst@CCECUse \lst@ProcessLetter
    ^^80^^81^^82^^83^^84^^85^^86^^87^^88^^89^^8a^^8b^^8c^^8d^^8e^^8f%
    ^^90^^91^^92^^93^^94^^95^^96^^97^^98^^99^^9a^^9b^^9c^^9d^^9e^^9f%
    ^^a0^^a1^^a2^^a3^^a4^^a5^^a6^^a7^^a8^^a9^^aa^^ab^^ac^^ad^^ae^^af%
    ^^b0^^b1^^b2^^b3^^b4^^b5^^b6^^b7^^b8^^b9^^ba^^bb^^bc^^bd^^be^^bf%
    ^^c0^^c1^^c2^^c3^^c4^^c5^^c6^^c7^^c8^^c9^^ca^^cb^^cc^^cd^^ce^^cf%
    ^^d0^^d1^^d2^^d3^^d4^^d5^^d6^^d7^^d8^^d9^^da^^db^^dc^^dd^^de^^df%
    ^^e0^^e1^^e2^^e3^^e4^^e5^^e6^^e7^^e8^^e9^^ea^^eb^^ec^^ed^^ee^^ef%
    ^^f0^^f1^^f2^^f3^^f4^^f5^^f6^^f7^^f8^^f9^^fa^^fb^^fc^^fd^^fe^^ff%
    ^^^^"""

eatletter_template_post = """% <--- for unicode character
    ^^00}
  \lst@RestoreCatcodes
  \makeatother"""

def make_eatletters(codes):
    return eatletter_template_pre + "^^^^".join(codes) + eatletter_template_post

codes = [
    "03b1",
    "03b2",
    "03b3",
    "03b4",
    "03b5",
    "03b6",
    "03b7",
    "03b8",
    "03b9",
    "03ba",
    "03bb",
    "03bc",
    "03bd",
    "03be",
    "03bf",
    "03c0",
    "03c1",
    "03c2",
    "03c3",
    "03c4",
    "03c5",
    "03c6",
    "03c7",
    "03c8",
    "03c9"
]

if __name__ == "__main__":
    print(make_eatletters(codes))
    
