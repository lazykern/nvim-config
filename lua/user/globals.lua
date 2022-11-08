local globals = {
	markdown_fenced_languages = { "ts=typescript" },

	-- copilot
	copilot_no_tab_map = true,
	copilot_assume_mapped = true,
	copilot_tab_fallback = "",
}

for k, v in pairs(globals) do
	vim.g[k] = v
end
