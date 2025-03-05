require("tokyonight").setup({
    style = "night",
    on_highlights = function(hl, colors)
        hl.CursorLineNr = {
            bold = true,
            fg = colors.fg
        }
        hl.IndentLineCurrent = {
            bold = true
        }
    end
})
local colorscheme = 'tokyonight'
vim.cmd.colorscheme(colorscheme)
