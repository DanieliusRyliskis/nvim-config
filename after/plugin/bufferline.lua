vim.opt.termguicolors = true

require("bufferline").setup{
    -- highlights = {
        -- fill = {
        --     fg = '#000000',
        --     bg = '#000000',
        -- },
        -- background = {
        --     fg = '#000000',
        --     bg = '#000000',
        -- },
        -- tab = {
        --     fg = '#000000',
        --     bg = '#000000',
        -- },
        -- tab_selected = {
        --     fg = '#000000',
        --     bg = '#000000',
        -- },
    --     tab_separator = {
    --       fg = '#000000',
    --       bg = '#000000',
    --     },
    --     separator_selected = {
    --         fg = '#000000',
    --         bg = '#000000',
    --     },
    --     separator_visible = {
    --         fg = '#000000',
    --         bg = '#000000',
    --     },
    --     separator = {
    --         fg = '#000000',
    --         bg = '#000000',
    --     },
    --     indicator_visible = {
    --         fg = '#000000',
    --         bg = '#000000',
    --     },
    --     indicator_selected = {
    --         fg = '#000000',
    --         bg = '#000000',
    --     },
    -- },
    options = {
        indicator = {
            icon = '▎', -- this should be omitted if indicator style is not 'icon'
            style = 'icon',
        },
        close_command = "bdelete! %d",       -- can be a string | function, | false see "Mouse actions"
        right_mouse_command = "bdelete! %d", -- can be a string | function | false, see "Mouse actions"
        left_mouse_command = "buffer %d",    -- can be a string | function, | false see "Mouse actions"
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",  -- Fix: removed | and function
                text_align = "left",     -- Fix: removed | "center" | "right"
                separator = true
            }
        },
        show_tab_indicators = false,
        show_duplicate_prefix = false, -- whether to show duplicate buffer prefix
        separator_style = {" ", " "},
    }
}
