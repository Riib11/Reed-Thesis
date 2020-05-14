# TODO

Final Touches:
- [x] figure out why table and chapter headings have `Π` and `K` respectively
- [x] add `\newpage`s and `clearpages` where needed
- [x] make sure that no text is overlapping with the headers of pages

References
- [x] insert citations to appendices

Organization
- [x] should the titles of sections like "Syntax for <lang-name>" be for each language or just say simply "Syntax"
- [x] move LangA language definition to appendix, and modify introduction to be narrative rather than a manual
- [x] in the same way that i did with syntax and reduction, do for preludes
- [x] move reference `.tex` files to subdirectories e.g. `langs/X/examples/<example-name>.tex`
- [x] move **Conventions** chapter to appendix
- [x] make preludes and language definition appendices for each language

Notations
- [x] change definition of type produces and type sums to `type t { x1:t1; ... xn:t2 }.` and `type t { x1:t1 | ... | xn:tn }.`

Typesetting
- [x] change the `;` in `cases` to a `|` to match the sum notation
- [x] change listings to have different style for strings
- [x] make sure `:` is properly spaced in places
- [x] need to do text-replace of all unicode characters inside of listings, to wrap `#` with `$\M #$`. This fixes the spacing issues I've been having. But, I need to do this at the end so that it does it all at once and I don't need to go through 1-by-1 and fix them all

Names
- [x] change `constructor` to `generator` for syntax rules
- [x] decide on how to name projections of n-ary products. Right now am using the `i-th` notation, but this is kinda ugly. Would be better to use something like: `projecti`, `proji`, `πi`, `#i`.

Typing
- [x] include Typing at the beginning in language A, or introduce it as a new language extension in the Monadic Effects chapter
- [x] make sure to use implicit type-class instance paramaters as needed

Listings
- [x] add captions to all listings (that need it)


AEH
- [x] demonstrate an effect handler for coin-flipping that takes a seed to generate the results
- [x] make handlers take resource instanec as parameter, but where to put it syntactically? options:
    - `r handler{ ... }` (*)
    - `handler r { ... }`
    - `handling r { ... }`
    - `handle r { ... }`

FME
- [x] chnage `Free` and `Freer` to lower-case, since aren't type-classes
