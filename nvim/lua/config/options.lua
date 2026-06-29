local opt = vim.opt

-- Zeilennummern
opt.number = true 
opt.relativenumber = true

-- Tabs und Einrückung
opt.tabstop = 4 
opt.shiftwidth = 4  
opt.expandtab = true   
opt.smartindent = true 

-- Suche 
opt.ignorecase = true 
opt.smartcase = true  
opt.hlsearch = false

-- Aussehen
opt.termguicolors = true 
opt.signcolumn = "yes" 
opt.cursorline = true  

-- System 
opt.clipboard = "unnamedplus"
opt.updatetime = 250  
opt.timeoutlen = 300
