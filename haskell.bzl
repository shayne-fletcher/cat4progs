def haskell_library(deps = [], **kwargs):
    native.haskell_library(
        deps = deps + ["//third-party/haskell:base"],
        **kwargs
    )

def haskell_binary(deps = [], **kwargs):
    native.haskell_binary(
        deps = deps + ["//third-party/haskell:base"],
        **kwargs
    )
