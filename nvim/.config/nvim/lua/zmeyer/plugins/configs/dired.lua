local M = {}


-- Define all my different keybind configurations.
-- Current I only have 1.
local m_keybinds = {
  my_current_keybinds = {
    dired_enter = "l",
    dired_back = "<C-O>",
    dired_up = "h"
  }
}



-- My most current coniguration.
function M.my_current_config()
  return function()
    require("dired").setup {
      path_separator = "/",
      show_banner = false,
      show_icons = true,
      show_hidden = true,
      show_dot_dirs = true,
      show_colors = true,
      keybinds = m_keybinds.my_current_keybinds
    }
  end
end


return M
