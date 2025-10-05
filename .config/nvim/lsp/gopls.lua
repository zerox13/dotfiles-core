return {
    cmd = {'gopls'},
    filetype = {"go", "gomod", "gowork", "gotmpl", "gosum"},
    root_markers = {"go.mod", "go.word", ".git"},
    settings = {
        gopls = {
            gofumpt = true,
        }
    }
}
