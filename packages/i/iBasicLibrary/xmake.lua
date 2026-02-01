package("ibasiclibrary")
    set_homepage("https://github.com/MiracleForest/iBasicLibrary-Release")
    set_description("iBasicLibrary-Release")

    local ibl_optional_modules = {
        "chrono",
        "data",
        "form",
        "io",
        "memory",
        "reflection",
        "system",
        "utils"
    }

    local ibl_module_deps = {
        io = { "data" },
        system = { "data" }
    }

    for _, name in ipairs(ibl_optional_modules) do
        add_configs(name, { description = "Enable " .. name .. " module", default = true, type = "boolean" })
    end

    add_urls("https://github.com/MiracleForest/iBasicLibrary-Release/releases/download/v$(version)/iBasicLibrary-SDK.zip")
    add_versions("0.1.0", "01da00610bce7694617cd6a76a5c7c2b918468084105dbc893b8684ff34a7737")

    on_load(function(package)
        local enabled_modules = {}
        local function enable_module(name)
            if enabled_modules[name] then
                return
            end
            enabled_modules[name] = true
            for _, dep in ipairs(ibl_module_deps[name] or {}) do
                enable_module(dep)
            end
        end

        for _, name in ipairs(ibl_optional_modules) do
            if package:config(name) then
                enable_module(name)
            end
        end

        package:add("defines", "IBL_WITH_BASE", "IBL_WITH_TYPE")
        for _, name in ipairs(ibl_optional_modules) do
            if enabled_modules[name] then
                package:add("defines", "IBL_WITH_" .. name:upper())
            end
        end
    end)

    on_install(function(package)
        os.cp("*", package:installdir())
    end)
