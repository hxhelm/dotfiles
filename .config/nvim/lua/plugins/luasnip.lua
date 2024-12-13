return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    build = "make install_jsregexp",
    opts = function(_, opts)
      local ls = require("luasnip")

      opts = vim.tbl_deep_extend("force", opts, {
        history = true,
        delete_check_events = "TextChanged",
      })

      local s = ls.snippet
      -- local t = ls.text_node
      local i = ls.insert_node
      local fmt = require("luasnip.extras.fmt").fmt

      -- ##############################################################################################################
      --                                                       LaTeX
      -- ##############################################################################################################

      ls.add_snippets("tex", {
        s(
          {
            trig = "fsec",
            name = "Insert section with all related LaTeX elements",
          },
          fmt(
            [[
            %
            % Section: <>
            %
            \section{<>}
            \label{sec:<>}
            ]],
            {
              i(1),
              i(2),
              i(3),
            },
            {
              delimiters = "<>",
            }
          )
        ),
      })

      return opts
    end,
  },
}
