package("ilistenattentively")
    set_description("iListenAttentively is a rich and modern LeviLamina Minecraft event library!")

    add_urls("https://github.com/MiracleForest/iListenAttentively-Release.git")
    add_urls("https://github.com/MiracleForest/iListenAttentively-Release/releases/download/v$(version)/SDK.zip")
    add_versions("0.1.0", "e825dbb88bfc597c2a6be3a49ee7555df5dee42d")
    add_versions("0.2.0", "fde7876a2b1c83dbfc9bdebc1037c54c9f424a72")
    add_versions("0.2.1", "0642bfc51b7dba18e73736d7d1c7e3efcd526443")
    add_versions("0.2.2", "f6dcd82cb247cb62b916ccf4ba847668adc39d83b43917f3da84803bee47d99f")
    add_versions("0.2.3", "2e18bae7372e49c4cc1fc332282417241ef3570bc488da55eb74676415e9ab8d")

    on_install(function(package)
        if package:version():le("0.2.1") then
            import("package.tools.xmake").install(package)
        else
            os.cp("*", package:installdir())
        end
    end)