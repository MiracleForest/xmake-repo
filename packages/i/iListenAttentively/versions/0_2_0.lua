local deps = {
    "fmt 10.2.1",
    "magic_enum v0.9.5",
    "nlohmann_json v3.11.3",
    "levilamina 1.0.0-rc.2",
    "levibuildscript 0.2.0",
    "prelink 0.3.0"
}

function load(package)
    for _, dep in ipairs(deps) do
        package:add("deps", dep)
    end
end