local deps = {
    "fmt 10.2.1",
    "magic_enum v0.9.5",
    "nlohmann_json v3.11.3",
    "levilamina 0.13.5"
}

function load(package)
    for _, dep in ipairs(deps) do
        package:add("deps", dep)
    end
end