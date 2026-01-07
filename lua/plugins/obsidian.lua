return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  event = {
    "VimEnter",
    "BufReadPre *.md",
    "BufNewFile *.md",
  },
  cond = function()
    local cwd = vim.fn.getcwd()
    local file = vim.fn.expand("%:p")

    -- List your vault paths
    local vault_paths = {
      vim.fn.expand("~/brain")
    }

    for _, vault in ipairs(vault_paths) do
      if cwd:match("^" .. vault) or file:match("^" .. vault) then
        return true
      end
    end

    return false
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    workspaces = {
      {
        name = "brain",
        path = "~/brain",
        overrides = {
          templates = {
            folder = "Templates",
            date_format = "%a-%d-%m-%Y",
            time_format = "%H:%M",
            substitutions = {
              journalDate = function()
                return os.date("%a%d%m%Y.md|%a-%d-%m-%Y")
              end,
            },
          },
          daily_notes = {
            date_format = "%a%d%m%Y",
            template = "Journal.md",
          },
        }
      },
    },
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
