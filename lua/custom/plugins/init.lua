-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{ "catppuccin/nvim", name = "catppuccin",
		config = function()
			vim.cmd.colorscheme('catppuccin-mocha')
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		end, },
	--ThePrimeagen's harpoon for fast switching between files
	'ThePrimeagen/harpoon',
	'mbbill/undotree',
	'ThePrimeagen/vim-be-good',
	'christoomey/vim-tmux-navigator',
	{
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons",
		config = function()
			require("trouble").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	},
	"tpope/vim-commentary",
	{
		'prichrd/netrw.nvim',
		ft = 'netrw',
		init = function()
			require 'netrw'.setup {
				mappings = {
					["p"] = function(payload)
						require 'manatee'.set_vwd(payload.dir, true)
					end,
				},
			}
		end,
		dependencies = {
			'nvim-tree/nvim-web-devicons',
			'tpope/vim-vinegar',
			'prichrd/manatee.nvim',
		},
	},
}
