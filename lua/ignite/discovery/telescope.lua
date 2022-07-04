local M = {}

function M.setup()
  require("telescope").load_extension("fzy_native")

  require("telescope").setup({
    defaults = {
      file_sorter = require("telescope.sorters").get_fzy_sorter,
    },
    pickers = {},
    extensions = {
      fzy_native = {
        override_generic_sorter = false,
        override_file_sorter = true,
      }
    }
  })
end

function M.find_files_project()
  local utils = require("telescope.utils")
  local builtin = require("telescope.builtin")

  local _, res, _ = utils.get_os_command_output({ "git", "rev-parse", "--is-inside-work-tree" })

  if res == 0 then
    builtin.git_files()
  else
    builtin.find_files({ hidden = true })
  end
end

return M
