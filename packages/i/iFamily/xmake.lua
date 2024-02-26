package("iFamily")
    set_description("The iFamily package")
    add_urls("https://github.com/MiracleForest/iFamily.git")
    add_versions("0.1.0", "a7afe08027be02342f5062113372b6462e4c239a")

    on_install(function (package)
        os.cp("include/*.h", package:installdir("include"))
    end)
