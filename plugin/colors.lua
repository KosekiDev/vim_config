local c = require('vscode.colors').get_colors()

vim.wo.cursorline = true

require('vscode').setup({
    style = 'dark',
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

function Light()
    require('vscode').load('light')

    local hl = vim.api.nvim_set_hl
    hl(0, '@constant', { fg = "#0070c1", bg = 'NONE' })
    hl(0, 'CursorLine', { fg = 'NONE', bg = '#F8F8F8' })
end

function Dark()
    require('vscode').load('dark')

    local hl = vim.api.nvim_set_hl
    hl(0, '@constant', { fg = "#4fc1ff", bg = 'NONE' })
    hl(0, '@type.builtin', { fg = c.vscBlueGreen, bg = 'NONE' })
    hl(0, 'LineNr', { fg = "#858585", bg = 'NONE' })
end

Dark()
