return {
    cmd = { "gopls" },
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    root_markers = { "go.mod", ".git" },
    settings = {
        gopls = {
            buildFlags = { "-tags=e2e,e2ev2" },
        },
    },
}
