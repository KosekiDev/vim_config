require('rose-pine').setup({disable_italics = true})

function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)
end

function light()
    vim.o.background = "light"
    vim.cmd [[
        hi Normal guibg=#ffffff
    ]]
end

function dark()
    vim.cmd("set background=dark")
end

ColorMyPencils()
