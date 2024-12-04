package("ilistenattentively")
    add_urls("https://github.com/MiracleForest/iListenAttentively.git")
    add_versionfiles("versions/versions.txt")

    on_load(function(package)
        local deps = {
            "fmt",
            "magic_enum",
            "nlohmann_json",
            "levilamina"
        }

        function load(package)
            for _, dep in ipairs(deps) do
                package:add("deps", dep)
            end
        end
    end)

    on_install(function(package)
        import("package.tools.xmake").install(package)
    end)