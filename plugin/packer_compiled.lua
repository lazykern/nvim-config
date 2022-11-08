-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/phusitsom/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/phusitsom/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/phusitsom/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/phusitsom/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/phusitsom/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["crates.nvim"] = {
    after_files = { "/home/phusitsom/.local/share/nvim/site/pack/packer/opt/crates.nvim/after/plugin/cmp_crates.lua" },
    config = { "\27LJ\2\nê\5\0\0\t\0\28\00046\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\1\4\0B\1\1\0026\2\5\0009\2\6\0029\4\a\0015\5\b\0B\2\3\0019\2\2\0\18\4\1\0B\2\2\0016\2\t\0009\2\n\0029\2\v\2\18\3\2\0'\5\f\0'\6\r\0'\a\14\0005\b\15\0B\3\5\1\18\3\2\0'\5\f\0'\6\16\0'\a\17\0005\b\18\0B\3\5\1\18\3\2\0'\5\f\0'\6\19\0'\a\20\0005\b\21\0B\3\5\1\18\3\2\0'\5\22\0'\6\19\0'\a\23\0005\b\24\0B\3\5\1\18\3\2\0'\5\f\0'\6\25\0'\a\26\0005\b\27\0B\3\5\1K\0\1\0\1\0\1\tdesc\23Upgrade all crates4:lua require('crates').upgrade_all_crates()<cr>\15<leader>CA\1\0\1\tdesc\28Upgrade selected crates0:lua require('crates').upgrade_crates()<cr>\6v\1\0\1\tdesc\20Upgrade a crate/:lua require('crates').upgrade_crate()<cr>\15<leader>CU\1\0\1\tdesc&Reload information from crates.io(:lua require('crates').reload()<cr>\15<leader>Cr\1\0\1\tdesc'Toggle extra crates.io information(:lua require('crates').toggle()<cr>\15<leader>Ct\6n\20nvim_set_keymap\bapi\bvim\1\0\2\tname\vcrates\rpriority\3Ì\b\fsources\vinsert\ntable\15get_config\bcmp\nsetup\vcrates\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/opt/crates.nvim",
    url = "https://github.com/Saecki/crates.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["leap.nvim"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\24set_default_keymaps\tleap\frequire\0" },
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/leap.nvim",
    url = "https://github.com/ggandor/leap.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-code-action-menu"] = {
    commands = { "CodeActionMenu" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/opt/nvim-code-action-menu",
    url = "https://github.com/weilbith/nvim-code-action-menu"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-surround"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["presence.nvim"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/presence.nvim",
    url = "https://github.com/andweeb/presence.nvim"
  },
  ["project.nvim"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { "\27LJ\2\n·\1\0\2\b\1\v\0\0236\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\4\0-\6\0\0009\6\5\0069\6\5\0065\a\6\0=\1\a\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\b\0-\6\0\0009\6\t\0069\6\t\0065\a\n\0=\1\a\aB\2\5\1K\0\1\0\0À\1\0\0\22code_action_group\14<Leader>a\vbuffer\1\0\0\18hover_actions\14<C-space>\6n\bset\vkeymap\bvimÎ\1\1\0\6\0\f\0\0166\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\3\0003\5\4\0=\5\5\4=\4\a\0035\4\t\0005\5\b\0=\5\n\4=\4\v\3B\1\2\0012\0\0€K\0\1\0\ntools\16inlay_hints\1\0\0\1\0\2\27parameter_hints_prefix\b<- \23other_hints_prefix\b=> \vserver\1\0\0\14on_attach\0\1\0\1\15standalone\2\nsetup\15rust-tools\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/opt/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nÆ\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\nsigns\1\0\4\thint\thint\16information\tinfo\fwarning\twarn\nerror\nerror\1\0\5\17indent_lines\1\25use_diagnostic_signs\1\16fold_closed\6>\14fold_open\6v\nicons\1\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "https://github.com/moll/vim-bbye"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/phusitsom/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: leap.nvim
time([[Config for leap.nvim]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\24set_default_keymaps\tleap\frequire\0", "config", "leap.nvim")
time([[Config for leap.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nÆ\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\nsigns\1\0\4\thint\thint\16information\tinfo\fwarning\twarn\nerror\nerror\1\0\5\17indent_lines\1\25use_diagnostic_signs\1\16fold_closed\6>\14fold_open\6v\nicons\1\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-cmp ]]
vim.cmd [[ packadd crates.nvim ]]

-- Config for: crates.nvim
try_loadstring("\27LJ\2\nê\5\0\0\t\0\28\00046\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\1\4\0B\1\1\0026\2\5\0009\2\6\0029\4\a\0015\5\b\0B\2\3\0019\2\2\0\18\4\1\0B\2\2\0016\2\t\0009\2\n\0029\2\v\2\18\3\2\0'\5\f\0'\6\r\0'\a\14\0005\b\15\0B\3\5\1\18\3\2\0'\5\f\0'\6\16\0'\a\17\0005\b\18\0B\3\5\1\18\3\2\0'\5\f\0'\6\19\0'\a\20\0005\b\21\0B\3\5\1\18\3\2\0'\5\22\0'\6\19\0'\a\23\0005\b\24\0B\3\5\1\18\3\2\0'\5\f\0'\6\25\0'\a\26\0005\b\27\0B\3\5\1K\0\1\0\1\0\1\tdesc\23Upgrade all crates4:lua require('crates').upgrade_all_crates()<cr>\15<leader>CA\1\0\1\tdesc\28Upgrade selected crates0:lua require('crates').upgrade_crates()<cr>\6v\1\0\1\tdesc\20Upgrade a crate/:lua require('crates').upgrade_crate()<cr>\15<leader>CU\1\0\1\tdesc&Reload information from crates.io(:lua require('crates').reload()<cr>\15<leader>Cr\1\0\1\tdesc'Toggle extra crates.io information(:lua require('crates').toggle()<cr>\15<leader>Ct\6n\20nvim_set_keymap\bapi\bvim\1\0\2\tname\vcrates\rpriority\3Ì\b\fsources\vinsert\ntable\15get_config\bcmp\nsetup\vcrates\frequire\0", "config", "crates.nvim")

vim.cmd [[ packadd mason-lspconfig.nvim ]]
vim.cmd [[ packadd rust-tools.nvim ]]

-- Config for: rust-tools.nvim
try_loadstring("\27LJ\2\n·\1\0\2\b\1\v\0\0236\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\4\0-\6\0\0009\6\5\0069\6\5\0065\a\6\0=\1\a\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\b\0-\6\0\0009\6\t\0069\6\t\0065\a\n\0=\1\a\aB\2\5\1K\0\1\0\0À\1\0\0\22code_action_group\14<Leader>a\vbuffer\1\0\0\18hover_actions\14<C-space>\6n\bset\vkeymap\bvimÎ\1\1\0\6\0\f\0\0166\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\3\0003\5\4\0=\5\5\4=\4\a\0035\4\t\0005\5\b\0=\5\n\4=\4\v\3B\1\2\0012\0\0€K\0\1\0\ntools\16inlay_hints\1\0\0\1\0\2\27parameter_hints_prefix\b<- \23other_hints_prefix\b=> \vserver\1\0\0\14on_attach\0\1\0\1\15standalone\2\nsetup\15rust-tools\frequire\0", "config", "rust-tools.nvim")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file CodeActionMenu lua require("packer.load")({'nvim-code-action-menu'}, { cmd = "CodeActionMenu", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)


_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
