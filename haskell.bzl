def assert_output(name, command, output):
    return native.genrule(
        name = name,
        bash = command + " | grep \"" + output + "\" && touch \"$OUT\"",
        cmd_exe = command + " | findstr \"" + output + "\" && type nul > \"$OUT\"",
        out = "out.txt",
    )

def haskell_library(deps = [], **kwargs):
    native.haskell_library(
        deps = deps + ["//third-party/haskell:base"],
        **kwargs
    )

def haskell_binary(link_style = None, linker_flags = [], deps = [], **kwargs):
    native.haskell_binary(
        # Workarounds for as yet not triaged runtime segfault.
        linker_flags = linker_flags + ["-dynamic"] if host_info().os.is_macos and host_info().arch.is_aarch64 else linker_flags,
        link_style = "static" if host_info().os.is_macos and host_info().arch.is_x86_64 else link_style,
        deps = deps + ["//third-party/haskell:base"],
        **kwargs
    )
