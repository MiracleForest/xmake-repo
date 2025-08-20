package("ibasiclibrary")
    set_homepage("https://github.com/MiracleForest/iBasicLibrary-Release")
    set_description("iBasicLibrary-Release")

    add_urls("https://github.com/MiracleForest/iBasicLibrary-Release/releases/download/v$(version)/iBasicLibrary-SDK.zip")
    add_versions("0.1.0", "01da00610bce7694617cd6a76a5c7c2b918468084105dbc893b8684ff34a7737")

    on_install(function(package)
        os.cp("*", package:installdir())
    end)
