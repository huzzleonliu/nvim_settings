return{
  -- 安装treesitter
  "nvim-treesitter/nvim-treesitter",
  build=":TSUpdate",
  config = function()
    -- 配置treesitter
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed={"lua"},
      highlight={enable=ture},
      indent={enable=ture},
    })
  end
}