-- Literary Universe Light — Neovim
-- Art Nouveau: warm ivory, sepia ink, muted sage, soft gold, LU magenta
-- Uses the aether.nvim plugin (same as sakura) with custom light palette

return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors — warm ivory / parchment
                bg          = "#F7F2EA",
                bg_dark     = "#EDE5D8",
                bg_highlight = "#D6C9B8",

                -- Foreground colors — sepia ink
                fg          = "#3A2E28",
                fg_dark     = "#6B5A4E",
                comment     = "#8A7A6E",

                -- Accent colors — Art Nouveau palette
                -- red: errors, deletions — terracotta
                red         = "#B84C3A",
                -- orange: constants, numbers — warm amber
                orange      = "#D4604A",
                -- yellow: types, warnings — soft gold
                yellow      = "#C4963A",
                -- green: strings, success — muted sage
                green       = "#6B8C6A",
                -- cyan: parameters, hints — dusty teal
                cyan        = "#7A9E8C",
                -- blue: functions, links — LU secondary blue
                blue        = "#0575BC",
                -- purple: keywords, storage — LU magenta (used sparingly)
                purple      = "#A12577",
                -- magenta: special keywords — rose
                magenta     = "#C44090",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
