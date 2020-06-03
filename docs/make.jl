using Assignment02
using Documenter

makedocs(;
    modules=[Assignment02],
    authors="Kevin Bonham, PhD <kbonham@wellesley.edu>",
    repo="https://github.com/wellesley-bisc195/Assignment02.jl/blob/{commit}{path}#L{line}",
    sitename="Assignment02.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://wellesley-bisc195.github.io/Assignment02.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/wellesley-bisc195/Assignment02.jl",
)
