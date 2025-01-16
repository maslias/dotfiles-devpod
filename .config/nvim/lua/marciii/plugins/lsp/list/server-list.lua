local M = {}

function M.get_servers()
	local servers = {
		"lua_ls",
		"bashls",
		"eslint",
		"marksman",
		"jsonls",
		-- "cssls",
		-- "html",
		-- "gopls",
		-- "intelephense",
		-- "lemminx",
		-- "templ",
		-- "htmx",
		-- "tailwindcss",
		-- "docker_compose_language_service",
		-- "pyright",
	}
	return servers
end

function M.get_tools()
	local tools = {
		"prettier",
		"stylua",
		"fixjson",
		"xmlformatter",
		-- "phpcs",
		-- "php-cs-fixer",
		-- "shfmt",
		-- "gofumpt",
		-- "goimports-reviser",
		-- "golines",
		-- "mypy",
		-- "ruff",
		-- "black",
	}
	return tools
end

return M
