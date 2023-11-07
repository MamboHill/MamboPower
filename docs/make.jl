push!(LOAD_PATH,"../src/")

using Documenter, MamboPower

makedocs(sitename = "MamboPower.jl",
            modules  = [MamboPower],
            pages=[
                "Home" => "index.md"
            ]
        )

deploydocs(
    repo = "github.com/MamboHill/MamboPower.jl.git",
)