package("ilistenattentively")
    add_urls("https://github.com/MiracleForest/iListenAttentively.git")
    add_versionfiles("versions/versions.txt")

    on_load(function(package)
        import("core.base.semver")
        local version = package:version_str()
        version = string.gsub(version, "%.", "_")
        try { function()
            import("versions." .. version).load(package)
        end, catch { function(e)
            cprint(
                "${bright yellow}warning: ${clear}Unknown version: ${bright cyan}"
                .. version .. "${clear}, please resolve dependencies manually."
            )
        end } }
    end)

    on_install(function(package)
        import("package.tools.xmake").install(package)
    end)