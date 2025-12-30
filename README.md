# lhs2tex-template

## Installation

**lhs2tex** produces LaTeX code from `.lhs` files. To turn that into a PDF, you will need to install a TeX distribution on your device.

Additionally, it relies on three packages which most modern LaTeX distributions come with. These are `polytable`, `lazylist` and `amsmath`. LaTeX may also require the `Kpathsea library`.

Installation methods besides those which use cabal are not covered, so run the below after you've installed your dependencies.

```shell
cabal update
cabal install lhs2tex
```

## Use

Run any of the provided scripts with +x permissions. Windows scripts are not provided.