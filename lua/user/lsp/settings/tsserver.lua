local M = require("user.lsp.handlers").setup()

if M == nil then
	return
end

local on_attach = M.on_attach
local capabilities = M.capabilities

return {

	setup = {
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = {
			"javascript",
			"javascriptreact",
			"javascript.jsx",
			"typescript",
			"typescriptreact",
			"typescript.tsx",
		},
		cmd = { "typescript-language-server", "--stdio" },
	},
}
