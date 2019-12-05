# Delimeted Control

- Okmij's references: http://okmij.org/ftp/continuations/
  - intro to shift and reset: http://okmij.org/ftp/continuations/#tutorial
  - implementations of DC in FPL: http://okmij.org/ftp/continuations/implementations.html

## Call-with-current-continuation
- definition: https://en.wikipedia.org/wiki/Call-with-current-continuation
- Scheme implementation of `call/cc`: https://stackoverflow.com/questions/2694679/how-does-the-yin-yang-puzzle-work
- Haskell implementation of `MonadCont.callCC`: https://stackoverflow.com/questions/9050725/call-cc-implementation
- blog article: _The Mother of All Monads_: http://blog.sigfpe.com/2008/12/mother-of-all-monads.html

## Yin-Yang Puzzle
- Intro with stackoverflow: https://stackoverflow.com/questions/2694679/how-does-the-yin-yang-puzzle-work
- **Andrej Bauer** answers his own question: https://stackoverflow.com/questions/9250474/does-the-yin-yang-continuations-puzzle-make-sense-in-a-typed-language
  - references paper: _Pretnar M - Programming with Algebraic Effect and Handlers_
- implementation in Haskell: https://stackoverflow.com/questions/19968930/haskell-version-of-yin-yang-puzzle-kind-incompatibility-error

## Algebraic Effects and Handlers
- paper: _Pretnar M - Programming with Algebraic Effect and Handlers_
  - referenced paper: _Danvy Olivier - Representing Control - A Study of the CPS Transformation_
- ying-yang implented in Eff example `eff/examples/delimeted.eff`, but doesn't type-check
