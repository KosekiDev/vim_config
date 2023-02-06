require('rose-pine').setup({ disable_italics = true, dim_nc_background = true })

vim.cmd('colorscheme rose-pine')

function light()
    vim.o.background = "light"
    vim.cmd [[
        hi Normal guibg=#ffffff
    ]]
end

function dark()
    vim.cmd("set background=dark")
end

dark()
