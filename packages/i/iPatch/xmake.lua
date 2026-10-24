package("ipatch")
    set_homepage("https://github.com/MiracleForest/iPatch")
    set_description("Windows x86-64 / C++23 链式补丁与内联 Hook 库。")
    add_deps("xbyak v7.44")

    add_urls("https://github.com/MiracleForest/iPatch.git")
    add_versions("1.0.0", "58eeb0b1f86e926da1f77a3d13c218709147adb8")

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        import("package.tools.xmake").install(package, configs)
    end)