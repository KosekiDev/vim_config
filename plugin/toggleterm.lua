require("toggleterm").setup {
    -- size can be a number or function which is passed the current terminal
    size = 17,
    open_mapping = [[<c-\>]],
    close_on_exit = true,
}

function _G.set_terminal_keymaps()
      local opts = {buffer = 0}
      vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    end
    
    -- if you only want these mappings for toggle term use term://*toggleterm#* instead
    vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
