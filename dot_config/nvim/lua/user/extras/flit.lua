local M = {
  "ggandor/flit.nvim",
  opts = { labeled_modes = "nx" },
}

function M.keys()
  local ret = {}
  for _, key in ipairs { "f", "F", "t", "T" } do
    ret[#ret + 1] = { key, mode = { "n", "x", "o" }, desc = key }
  end
  return ret
end

function M.config()
  require("flit").setup {}
end

return M
