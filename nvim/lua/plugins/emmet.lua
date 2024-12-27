return {
  "mattn/emmet-vim",
  event = "InsertEnter",
  config = function()
    vim.g.user_emmet_leader_key = ""
    vim.api.nvim_set_keymap("i", "<C-e>", "<Plug>(emmet-expand-abbr)", {})
    vim.api.nvim_set_keymap("n", "<C-e>", "<Cmd>emmet-expand-abbr<CR>", {})
    vim.g.user_emmet_settings = {
      html = {
        snippets = {
          ["html:5"] = [[<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<body>
    | 
</body>
</html>]],
        },
      },
      javascript = { extends = "jsx" },
      typescript = { extends = "jsx" },
      php = { extends = "html" },
    }
    vim.g.user_emmet_mode = "n"
  end,
  ft = { "html", "php", "javascript", "css" },
}
