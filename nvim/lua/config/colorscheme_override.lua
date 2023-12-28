local M = {}
function M.transparent_override()
    local highlights = {
        'SignColumn',
    }
    for _, highlight in pairs(highlights) do
        vim.cmd('hi ' .. highlight .. ' guibg=none ctermbg=none')
    end
end
return M
