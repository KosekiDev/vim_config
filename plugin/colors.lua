local c = require('vscode.colors').get_colors()

vim.wo.cursorline = true

require('vscode').setup({
    -- Enable transparent background
    transparent = true,

    -- Enable italic comment
    italic_comments = true,

    -- Disable nvim-tree background color
    disable_nvimtree_bg = true,

    -- Override colors (see ./lua/vscode/colors.lua)
    color_overrides = {
        vscLineNumber = '#FFFFFF',
    },

    -- Override highlight groups (see ./lua/vscode/theme.lua)
    group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
    }
})

function light()
    vim.o.background = "light"

    local c = require('vscode.colors').get_colors()
    local hl = vim.api.nvim_set_hl
    hl(0, '@constant', { fg = "#0070c1", bg = 'NONE' })
end

function dark()
    vim.cmd("set background=dark")

    local c = require('vscode.colors').get_colors()
    local hl = vim.api.nvim_set_hl
    hl(0, '@constant', { fg = "#4fc1ff", bg = 'NONE' })
    hl(0, '@type.builtin', { fg = c.vscBlueGreen, bg = 'NONE' })
    hl(0, 'LineNr', { fg = "#858585", bg = 'NONE' })
end

dark()
