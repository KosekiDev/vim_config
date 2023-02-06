require('rose-pine').setup({ disable_italics = true })

vim.cmd('colorscheme rose-pine')

function light()
    vim.o.background = "light"
    vim.cmd [[
        hi Normal guibg=#ffffff
    ]]
end

function dark()
    vim.cmd("set background=dark")
    vim.cmd [[
        hi Normal guibg=#120f1d
    ]]
end

dark()
