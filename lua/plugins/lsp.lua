return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "jdtls" },
      })

      -- Lua LSP
      vim.lsp.config.lua_ls = {
        cmd = { "lua-language-server" },
        settings = {
          Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = { globals = { "vim" } },
            workspace = { library = vim.api.nvim_get_runtime_file("", true) },
            telemetry = { enable = false },
          },
        },
      }

      -- Java LSP
      vim.lsp.config.jdtls = {
        cmd = { "jdtls" },
        capabilities = vim.tbl_deep_extend("force", vim.lsp.protocol.make_client_capabilities(), {
          textDocument = {
            completion = {
              completionItem = {
                resolveSupport = {
                  properties = {}
                }
              }
            }
          }
        }),
        settings = {
          java = {
            configuration = {
              runtimes = {
                {
                  name = "JavaSE-1.8",
                  path = "/usr/libexec/java_home -v 1.8",
                },
                {
                  name = "JavaSE-11",
                  path = "/usr/libexec/java_home -v 11",
                },
                {
                  name = "JavaSE-17",
                  path = "/usr/libexec/java_home -v 17",
                },
              },
            },
            compile = {
              nullAnalysis = {
                mode = "automatic",
              },
            },
          },
        },
      }

      -- LSP keymaps
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(event)
          local map = function(keys, func, desc)
            vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
          end

          map("gd", vim.lsp.buf.definition, "Goto Definition")
          map("gr", vim.lsp.buf.references, "Goto References")
          map("K", vim.lsp.buf.hover, "Hover Documentation")
          map("<leader>ca", vim.lsp.buf.code_action, "Code Action")
          map("<leader>rn", vim.lsp.buf.rename, "Rename")
          map("]d", vim.diagnostic.goto_next, "Next Diagnostic")
          map("[d", vim.diagnostic.goto_prev, "Previous Diagnostic")
          map("<leader>d", vim.diagnostic.open_float, "Show Diagnostic")
          map("<leader>q", vim.diagnostic.setloclist, "Diagnostic List")
        end,
      })
    end,
  },
}
