# ghcjs-dom-stub

This is a test program.
Probably not updated.

You need jsaddle to use ghcjs-dom with ghc and intero.
If you want to try it a bit, compilation is heavy, so you can use this package instead.



stack.yaml

```yaml
extra-deps:
  - ghcjs-base-stub-0.2.0.0
  - containers-0.5.11.0
  - git: https://github.com/nishimura/ghcjs-dom-stub.git
    commit: a8dd26a1456410b4b178184483ba067ec8b7e6ba
```



package.yaml

```yaml
when:
  - condition: impl(ghcjs)
    then:
      dependencies:
        - ghcjs-base
        - ghcjs-dom
    else:
      dependencies:
        - ghcjs-base-stub
        - ghcjs-dom-stub
```



In order to make intero easy to use with GHC, I think that JSVal needs to be a Show instance that displays easy-to-understand messages.
