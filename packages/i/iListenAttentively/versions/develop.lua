local deps = {}

function load(package)
    for _, dep in ipairs(deps) do
        package:add("deps", dep)
    end
end