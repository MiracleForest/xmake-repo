local deps = {
    "magic_enum v0.9.5",
    "levilamina 1.0.0-rc.2"
}

function load(package)
    for _, dep in ipairs(deps) do
        package:add("deps", dep)
    end
end