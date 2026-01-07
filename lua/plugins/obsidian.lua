return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {},
    note_id_func = function(title)
      -- Create filename from title
      if title ~= nil then
        -- Remove special characters and replace spaces with hyphens
        return title:gsub("[^A-Za-z0-9 ]", ""):gsub(" ", "-"):lower()
      else
        -- Fallback to timestamp if no title
        return tostring(os.time())
      end
    end,
    prepend_note_path = true,
    wiki_link_func = function(opts)
      return require("obsidian.util").wiki_link_id_prefix(opts)
    end,
    follow_url_func = function(url)
      vim.fn.jobstart({"open", url})
    end,
    disable_frontmatter = true,
  },
}
