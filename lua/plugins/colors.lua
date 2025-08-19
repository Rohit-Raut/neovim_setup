return{
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({transparent=true})
            vim.cmd.colorscheme "tokyonight"
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies={
            "nvim-tree/nvim-web-devicons",
        },
        opts ={
            theme = 'tokyonight',
        }
    },

}
