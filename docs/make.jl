using Scrap
using Documenter

DocMeta.setdocmeta!(Scrap, :DocTestSetup, :(using Scrap); recursive=true)

makedocs(;
    modules=[Scrap],
    authors="Hu Xinqiao",
    repo="https://github.com/baedan/Scrap.jl/blob/{commit}{path}#{line}",
    sitename="Scrap.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://baedan.github.io/Scrap.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/baedan/Scrap.jl",
    devbranch="main",
)
