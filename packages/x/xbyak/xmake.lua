package("xbyak")
    set_kind("library", { headeronly = true } )
    set_homepage("https://github.com/herumi/xbyak")
    set_description("A JIT assembler for x86/x64 architectures supporting the latest instruction set extensions such as AVX10.2 and ACE")

    set_urls(
        "https://github.com/herumi/xbyak/archive/$(version).zip",
        "https://github.com/herumi/xbyak.git"
    )

    add_versions("v7.44", "861ec560a809b6c189f0b887a8c6fcb1e7b193f433da63f26658b1b1ec5bb39d")

    on_install(function (package)
        os.cp("xbyak", package:installdir("include"))
    end)