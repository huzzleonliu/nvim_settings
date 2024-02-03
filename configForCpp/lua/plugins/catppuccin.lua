return {
  -- 安装主题插件
    "catppuccin/nvim",
    name="catppuccin",
    priority=1000,
      -- 配置主题插件 catppuccin
    config = function()
      vim.cmd.colorscheme "catppuccin"
    end
}
