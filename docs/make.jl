using MySecondPackage
using Documenter

DocMeta.setdocmeta!(MySecondPackage, :DocTestSetup, :(using MySecondPackage); recursive=true)

makedocs(;
    modules=[MySecondPackage],
    authors="timurUyu <timurUyu@github.com> and contributors",
    repo="https://github.com/timurUyu/MySecondPackage.jl/blob/{commit}{path}#{line}",
    sitename="MySecondPackage.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://timurUyu.github.io/MySecondPackage.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/timurUyu/MySecondPackage.jl",
    devbranch="main",
)
