package("iFamily")
    set_description("The iFamily package")

    add_urls("https://github.com/MiracleForest/iFamily.git")
    
    on_install(function (package)
        os.cp("iFamily/include/*.h", package:installdir("include"))
    end)
