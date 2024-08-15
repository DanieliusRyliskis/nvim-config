local cmp = require'cmp'
local luasnip = require'luasnip'
                        
            
cmp.setup({
    -- completion = {
    --     completeopt = 'menu,menuone,noselect',
    --     keyword_length = 2, -- Start completion after 2 characters
    -- },
    -- performance = {
    --     debounce = 100,  -- Add delay to reduce CPU load
    --     throttle = 100,  -- Limit how often the completion suggestions are updated as you type
    --     fetching_timeout = 200, -- Timeout for fetching completion items
    --     confirm_resolve_timeout = 100,  -- Delay resolving completion items slightly
    --     async_budget = 10,  -- Allow slightly more time for async functions per event loop step
    --     max_view_entries = 5, -- Limit the number of items displayed in the completion menu
    -- },
    -- experimental = {
    --     ghost_text = false, -- Disable ghost text for performance
    -- },
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
            -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_locally_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.locally_jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),
    }),                                    
    sources = cmp.config.sources({
        { name = 'nvim_lsp'},
        { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
    }, {
        { name = 'buffer'},
    })
})
