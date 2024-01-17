package("dyncall")
    set_description("Dyncall is a library for making dynamic function calls.")

    set_urls("https://dyncall.org/r$(version)/dyncall-$(version).tar.gz")

    add_versions("1.4", "14437dbbef3b6dc92483f6507eaf825ab97964a89eecae8cb347a6bec9c32aae")

    add_deps("cmake")

    on_install(function (package)
        local configs = {}
        table.insert(configs, "-DCMAKE_BUILD_TYPE=" .. (package:debug() and "Debug" or "Release"))
        table.insert(configs, "-DBUILD_SHARED_LIBS=" .. (package:config("shared") and "ON" or "OFF"))
        import("package.tools.cmake").install(package, configs)
        os.mkdir(path.join(package:installdir("include"), "dyncall"))
        os.mv(path.join(package:installdir("include"), "*.h"), path.join(package:installdir("include"), "dyncall"))
    end)

    on_test(function (package)
        assert(package:has_cfuncs("dcNewCallVM", {includes = "dyncall/dyncall.h"}))
    end)
