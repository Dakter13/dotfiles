return{
  -- цветовые схемы, хз чет как-то не впечетляет
  -- может я чет не понял, разберусь поже мейби потом удалю

--{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  -- открыть файлик красиво
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },
  -- структуризация кода
  {"nvim-treesitter/nvim-treesitter", build= ":tsupdate"},
  --панелька сбоку для проектов
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "muniftanjim/nui.nvim",
    }
   }
}
