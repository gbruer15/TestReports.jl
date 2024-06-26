using Documenter, TestReports

makedocs(
    modules = [TestReports],
    authors =  "Frames White, Malcolm Miller and contributors",
    sitename="TestReports.jl",
    checkdocs=:exports,
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://juliatesting.github.io/TestReports.jl/stable",
    ),
    pages=[
        "Home" => "index.md",
        "Manual" => "manual.md",
        "Library" => "library.md",
        "Contributing" => "contributing.md",
    ],
)

deploydocs(;
    repo="github.com/JuliaTesting/TestReports.jl",
    push_preview=true,
)
