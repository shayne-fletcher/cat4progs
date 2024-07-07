# cat4progs
[![buck2 build/run](https://github.com/shayne-fletcher/cat4progs/actions/workflows/buck-build-and-test.yml/badge.svg)](https://github.com/shayne-fletcher/cat4progs/actions/workflows/buck-build-and-test.yml)
## [dotslash](https://dotslash-cli.com/docs/installation/) + [buck2](https://buck2.build/) + [haskell](https://www.haskell.org/?uwu=true)
- Install [ghcup](https://www.haskell.org/ghcup/install/)
- Use ghcup to install ghc-9.10.1
```bash
        ghcup install ghc 9.10.1
        PATH="$HOME"/.ghcup/ghc/9.10.1/bin:"$PATH"; export PATH
```
- Install [dotslash](https://dotslash-cli.com/docs/installation/)
- Clone the repo
```bash
        git clone --recursive https://github.com/shayne-fletcher/cat4progs.git
        cd cat4progs
        PATH="$(pwd)":"$PATH"; export PATH # Put buck2 in PATH
```
- Invoke buck2
```bash
        buck2 build cat4progs//...
```
