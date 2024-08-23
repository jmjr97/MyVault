local status_ok, configs = pcall(require, "nvimtreesitter.configs")
if not status_ok then
    return
end

configs.setup {
    ensure_installed = { "c", "lua", "javascript", "markdown", "markdown_inline" },
    sync_install = false,
    auto_install = false,
    ignore_install = { "" },
    highlight = {
        enable = true,
        disable = { "" },
        additional_vim_regex_highlighting = true,
    },
    indent = { enable = true, disable = { "yaml" } },
}
