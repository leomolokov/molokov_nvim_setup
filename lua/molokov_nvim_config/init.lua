require("molokov_nvim_config.remap")
require("molokov_nvim_config.set")

vim.cmd 'colorscheme blue'


--set clipboard=unnamedplus

--vim.g.clipboard=true
--
--local function paste()
--    return {
--        vim.fn.split(vim.fn.getreg(""), "\n"),
--        vim.fn.getregtype(""),
--    }
--end
--
--vim.g.clipboard = {
--    name = 'OSC 52',
--    copy = {
--        ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
--        ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
--    },
--    paste = {
--        ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
--        ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
--    },
--}
