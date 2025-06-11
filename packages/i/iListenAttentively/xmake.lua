package("ilistenattentively")
    set_homepage("https://github.com/MiracleForest/iListenAttentively-Release")
    set_description("iListenAttentively is a rich and modern LeviLamina Minecraft event library!")

    add_urls("https://github.com/MiracleForest/iListenAttentively-Release.git", {alias = "A"})
    add_versions("A:0.1.0", "e825dbb88bfc597c2a6be3a49ee7555df5dee42d")
    add_versions("A:0.2.0", "fde7876a2b1c83dbfc9bdebc1037c54c9f424a72")
    add_versions("A:0.2.1", "0642bfc51b7dba18e73736d7d1c7e3efcd526443")

    add_urls("https://github.com/MiracleForest/iListenAttentively-Release/releases/download/v$(version)/SDK.zip", {alias = "B"})
    add_versions("B:0.2.2", "f6dcd82cb247cb62b916ccf4ba847668adc39d83b43917f3da84803bee47d99f")
    add_versions("B:0.2.3", "2e18bae7372e49c4cc1fc332282417241ef3570bc488da55eb74676415e9ab8d")

    add_urls("https://github.com/MiracleForest/iListenAttentively-Release/releases/download/v$(version)/iListenAttentively-SDK.zip", {alias = "C"})
    add_versions("C:0.3.0", "dde5c1089eab55d3accf54562f584a13d98194299bb20124cbe72af653368a28")
    add_versions("C:0.3.1", "64d548e1048de13e15a6be699729f189901baa36aa5b2f474a3b8bca6a796f61")
    add_versions("C:0.4.0", "c4bb92c228b30a08f0b80d16566cd1f48443eddcb3aa0d51ea744da1ca2ae38d")
    add_versions("C:0.4.1", "a28f2900846f35506a64e6a1ff774931a5a948e10b603cb775e0f6a7717ec29a")
    add_versions("C:0.4.2", "37e8ba870ea55d515dc2291c4b76e4b8dfba40a30c562a77ffbb5236b6942851")
    add_versions("C:0.5.0-rc.1", "ec86be823f00bd420ba177995980989c8e0592b1db0179d28616fb833ac55f5b")
    add_versions("C:0.5.0", "2fe3b3588bc9beeb16b558562e838dbd99a26cdcf69494ecc07249230fa3b1ce")
    add_versions("C:0.6.0", "2c8082f91d0e81cd7745ca43e3b5aebe28722ddc09ed7f512dcacce635dfe5b4")

    on_install(function(package)
        if package:version():le("0.2.1") then
            import("package.tools.xmake").install(package)
        else
            os.cp("*", package:installdir())
        end
    end)
