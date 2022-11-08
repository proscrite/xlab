using xlab
using Documenter

DocMeta.setdocmeta!(xlab, :DocTestSetup, :(using xlab); recursive=true)

makedocs(;
    modules=[xlab],
    authors="proscrite <pablogfr94@gmail.com> and contributors",
    repo="https://github.com/proscrite/xlab.jl/blob/{commit}{path}#{line}",
    sitename="xlab.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://proscrite.github.io/xlab.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/proscrite/xlab.jl",
    devbranch="main",
)
