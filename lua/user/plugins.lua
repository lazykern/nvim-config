local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	use({ "wbthomason/packer.nvim" }) -- Have packer manage itself
	use({ "nvim-lua/plenary.nvim" }) -- Useful lua functions used by lots of plugins
	use({ "windwp/nvim-autopairs" }) -- Autopairs, integrates with both cmp and treesitter
	use({ "numToStr/Comment.nvim" })
	use({ "JoosepAlviste/nvim-ts-context-commentstring" })
	use({ "akinsho/bufferline.nvim" })
	use({ "moll/vim-bbye" })
	use({ "nvim-lualine/lualine.nvim" })
	use({ "akinsho/toggleterm.nvim" })
	use({ "ahmedkhalf/project.nvim" })
	use({ "lewis6991/impatient.nvim" })
	use({ "lukas-reineke/indent-blankline.nvim" })
	use({ "goolord/alpha-nvim" })
	use({ "folke/which-key.nvim" })

	-- nvim-tree
	use({ "nvim-tree/nvim-tree.lua" })
	use({ "nvim-tree/nvim-web-devicons" })

	-- -- NERDTree
	-- use({ "preservim/nerdtree" })
	-- use({ "Xuyuanp/nerdtree-git-plugin" })
	-- use({ "ryanoasis/vim-devicons" })
	-- use({ "jistr/vim-nerdtree-tabs" })
	-- use({ "tiagofumo/vim-nerdtree-syntax-highlight" })

	-- Colorschemes
	use({ "catppuccin/nvim", as = "cappuccin" })
	require("catppuccin").setup({
		flavour = "mocha", -- latte, frappe, macchiato, mocha
		background = { -- :h background
			light = "latte",
			dark = "mocha",
		},
		transparent_background = true,
		term_colors = false,
		dim_inactive = {
			enabled = false,
			shade = "dark",
			percentage = 0.15,
		},
		no_italic = false, -- Force no italic
		no_bold = false, -- Force no bold
		styles = {
			comments = { "italic" },
			conditionals = { "italic" },
			loops = {},
			functions = {},
			keywords = {},
			strings = {},
			variables = {},
			numbers = {},
			booleans = {},
			properties = {},
			types = {},
			operators = {},
		},
		color_overrides = {},
		custom_highlights = {},
		integrations = {
			cmp = true,
			gitsigns = true,
			nvimtree = true,
			telescope = true,
			notify = false,
			mini = false,
		},
	})
	use({ "EdenEast/nightfox.nvim" })
	require("nightfox").setup({
		options = {
			compile_path = vim.fn.stdpath("cache") .. "/nightfox",
			compile_file_suffix = "_compiled",
			transparent = true,
			terminal_colors = true,
			dim_inactive = false,
			styles = {
				comments = "NONE",
				conditionals = "NONE",
				constants = "NONE",
				functions = "NONE",
				keywords = "NONE",
				numbers = "NONE",
				operators = "NONE",
				strings = "NONE",
				types = "italic,bold",
				variables = "NONE",
			},
			inverse = {
				match_paren = false,
				visual = false,
				search = false,
			},
		},
		palettes = {},
		specs = {},
		groups = {},
	})

	-- Cmp
	use({ "hrsh7th/nvim-cmp" }) -- The completion plugin
	use({ "hrsh7th/cmp-buffer" }) -- buffer completions
	use({ "hrsh7th/cmp-path" }) -- path completions
	use({ "saadparwaiz1/cmp_luasnip" }) -- snippet completions
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-nvim-lua" })

	-- Snippets
	use({ "L3MON4D3/LuaSnip" }) --snippet engine
	use({ "rafamadriz/friendly-snippets" }) -- a bunch of snippets to use

	-- LSP
	use({ "neovim/nvim-lspconfig" }) -- enable LSP
	use({ "williamboman/mason.nvim" }) -- simple to use language server installer
	use({ "williamboman/mason-lspconfig.nvim" })
	use({ "jose-elias-alvarez/null-ls.nvim" }) -- for formatters and linters
	use({ "RRethy/vim-illuminate" })
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup({

				icons = false,
				fold_open = "v", -- icon used for open folds
				fold_closed = ">", -- icon used for closed folds
				indent_lines = false, -- add an indent guide below the fold icons
				signs = {
					-- icons / text used for a diagnostic
					error = "error",
					warning = "warn",
					hint = "hint",
					information = "info",
				},
				use_diagnostic_signs = false, -- enabling this will use the signs defined in your lsp client
			})
		end,
	})
	use({ "weilbith/nvim-code-action-menu", cmd = "CodeActionMenu" })

	-- Telescope
	use({ "nvim-telescope/telescope.nvim" })
	require("telescope").setup({
		defaults = {
			layout_config = {
				vertical = {
					prompt_position = "top",
					mirror = true,
					preview_cutoff = 40,
					preview_height = 0.5,
				},
				width = 0.95,
				height = 0.95,
			},
		},
	})

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
	})

	-- Git
	use({ "lewis6991/gitsigns.nvim" })

	-- Copilot
	use({ "github/copilot.vim" })

	-- Discord Rich Presence
	use({ "andweeb/presence.nvim" })
	require("presence"):setup({
		-- General options
		auto_update = true,
		neovim_image_text = "what",
		main_image = "file",
		log_level = nil,
		debounce_timeout = 10,
		enable_line_number = false,
		blacklist = {},
		buttons = true,
		file_assets = {},
		show_time = false,

		-- Rich Presence text options
		editing_text = "Destroying %s",
		file_explorer_text = "Peeking %s",
		git_commit_text = "Committing holocaust",
		plugin_manager_text = "The hell",
		reading_text = "Peeping %s",
		workspace_text = "Puking on %s",
		line_number_text = "Line %s out of %s",
	})

	-- tools
	use({ "tpope/vim-fugitive" })
	use({ "tpope/vim-surround" })
	-- use({
	-- 	"kylechui/nvim-surround",
	-- 	tag = "*",
	-- 	config = function()
	-- 		require("surround").setup({})
	-- 	end,
	-- })
	use({ "norcalli/nvim-colorizer.lua" })

	--leap
	use({
		"ggandor/leap.nvim",
		config = function()
			require("leap").set_default_keymaps()
		end,
	})

	-- LANGUAGE SPECIFIC
	---- Rust
	use({
		"Saecki/crates.nvim",
		after = "nvim-cmp",
		config = function()
			require("crates").setup()

			local cmp = require("cmp")
			local config = cmp.get_config()
			table.insert(config.sources, { name = "crates", priority = 1100 })
			cmp.setup(config)

			-- Crates mappings:
			local map = vim.api.nvim_set_keymap
			map(
				"n",
				"<leader>Ct",
				":lua require('crates').toggle()<cr>",
				{ desc = "Toggle extra crates.io information" }
			)
			map(
				"n",
				"<leader>Cr",
				":lua require('crates').reload()<cr>",
				{ desc = "Reload information from crates.io" }
			)
			map("n", "<leader>CU", ":lua require('crates').upgrade_crate()<cr>", { desc = "Upgrade a crate" })
			map("v", "<leader>CU", ":lua require('crates').upgrade_crates()<cr>", { desc = "Upgrade selected crates" })
			map("n", "<leader>CA", ":lua require('crates').upgrade_all_crates()<cr>", { desc = "Upgrade all crates" })
		end,
	})

	use({
		"simrat39/rust-tools.nvim",
		after = { "mason-lspconfig.nvim" },
		-- Is configured via the server_registration_override installed below!
		config = function()
			local rt = require("rust-tools")
			rt.setup({

				server = {
					standalone = true,
					on_attach = function(_, bufnr)
						-- Hover actions
						vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
						-- Code action groups
						vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
					end,
				},
				tools = {
					inlay_hints = {
						parameter_hints_prefix = "<- ",
						other_hints_prefix = "=> ",
					},
				},
			})
		end,
	})

	---- Markdown
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
