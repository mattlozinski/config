-- lazy setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require ('options')
require ('plugins')
require ('keymaps')
require ('colorscheme')
require ('lsp')

require("indentmini").setup({
    exclude = { "markdown" },
})
require ("oil").setup({
    skip_confirm_for_simple_edits = true,
    keymaps = {
        ["gd"] = {
            desc = "Toggle file detail view",
            callback = function()
                detail = not detail
                if detail then
                    require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
                else
                    require("oil").set_columns({ "icon" })
                end
            end,
        },
        ["."] = { "actions.toggle_hidden", mode = "n" },
        ["<ESC>"] = { "actions.close", mode = "n" },
    },
    float = {
        padding = 2,
        max_width = 0.5,
        max_height = 0,
        border = "rounded",
        override = function(conf)
            return conf
        end,
    },
})
