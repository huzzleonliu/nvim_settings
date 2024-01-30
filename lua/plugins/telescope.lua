return{
  -- 安装模糊查找器 telescope
    "nvim-telescope/telescope.nvim",
    tag="0.1.5",
    dependencies={"nvim-lua/plenary.nvim"},
    -- 配置telescope
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
       --改变picker的样式
        pickers = {
          find_files = { theme = "cursor" }
        }

    end
}
