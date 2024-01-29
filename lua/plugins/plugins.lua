return {

  -- 安装主题插件
  {
    "catppuccin/nvim",
    name="catppuccin",
    priority=1000
  },
  -- 安装模糊查找器 telescope
  {
    "nvim-telescope/telescope.nvim",
    tag="0.1.5",
    dependencies={"nvim-lua/plenary.nvim"}
  },
  -- 安装treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build=":TSUpdate"
  },
  -- 安装neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
}
