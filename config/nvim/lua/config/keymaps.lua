vim.keymap.set("n", "<leader>r", function()
	-- clear Lua cache for config files if needed here
	vim.cmd("source $MYVIMRC") -- reload your init.lua or equivalent config
	print("Config reloaded")
end, { noremap = true, silent = true })

-- Hyperlinks
vim.keymap.set("n", "bji", "<cmd>edit ~/InitJIH/README.md<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "bba", "<cmd>edit ~/InitBAS/README.md<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "adh", ":e ~/HomepageJIH/_quarto.yml<CR>")
vim.keymap.set("n", "adhi", ":e ~/HomepageJIH/_quarto-intn.yml<CR>")
vim.keymap.set("n", "adhe", ":e ~/HomepageJIH/_quarto-extl.yml<CR>")
vim.keymap.set("n", "kmp", ":e ~/.config/nvim/lua/config/keymaps.lua<CR>")
vim.api.nvim_set_keymap("n", "whyp", ":e ~/Research/Hyperinflation/_quarto.yml<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "ta", ":belowright split term://bash<CR><S-A>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "te", ":vsplit term://bash<CR><S-A>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
	"n",
	"tfi",
	":e ~/Teaching/SFB30820Finansteori/_quarto.yml<CR>",
	{ noremap = true, silent = true }
)
-- Session
vim.keymap.set("n", "seo", ":e Session.vim<CR>")
vim.keymap.set("n", "sem", ":mksession!<CR>")
vim.keymap.set("n", "ser", "<cmd>source Session.vim<CR>", { noremap = true, silent = true })

--  ~/Intweb/Musikk/_quarto.yml<CR>
-- /home/joernih/Teaching/OEKA201ProgrammingWebPage/_quarto.yml<CR>
-- /home/joernih/Research/Hyperinflation/prerender.R
-- /home/joernih/Teaching/SFB10916Makrooekonomi/_quarto.yml
-- /home/joernih/Teaching/SFB10916Makrooekonomi/_quarto_html.yml
-- /home/joernih/Teaching/SFB10916Makrooekonomi/_quarto_bokp.yml
-- /home/joernih/Teaching/SFB30820Finansteori/_quarto.yml
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Keymaps are automatically loaded on the VeryLazy event
-- Add any additional keymaps here

vim.api.nvim_set_keymap("n", "why", ":e ~/Research/Hyperinflation/_quarto.yml<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "wma", ":e ~/Teaching/SFB10916Makrooekonomi/_quarto.yml<CR>")
vim.keymap.set("n", "wmaw", ":e ~/Teaching/SFB10916Makrooekonomi/_quarto-html.yml<CR>")
vim.keymap.set("n", "wmab", ":e ~/Teaching/SFB10916Makrooekonomi/_quarto-bokp.yml<CR>")
-- /home/joernih/InitJIH/config/nvim/vim/init.vim
-- map sec  :e ~/InitJIH/README.md<CR>
vim.keymap.set("n", "ce", "<cmd>edit")

-- vim.api.nvim_set_keymap("n", "ctc", ":tabnew %<CR>", { noremap = true, silent = true })
-- map sea  :e ~/InitJIH/alias.sh<CR>

-- Python
vim.keymap.set("n", "pyd", function()
	require("nvim-python-repl").toggle_execute()
end, { desc = "Automatically execute command in REPL after sent" })
vim.keymap.set("n", "pye", function()
	require("nvim-python-repl").toggle_vertical()
end, { desc = "Create REPL in vertical or horizontal split" })
vim.keymap.set("n", "pyse", function()
	require("nvim-python-repl").send_current_cell_to_repl()
end, { desc = "Sends the cell under cursor to repl" })
vim.keymap.set("n", "pyc", function()
	require("nvim-python-repl").send_buffer_to_repl()
end, { desc = "Send entire buffer to REPL" })
vim.keymap.set("n", "pyf", function()
	require("nvim-python-repl").open_repl()
end, { desc = "Opens the REPL in a window split" })
vim.keymap.set("v", "pyb", function()
	require("nvim-python-repl").send_visual_to_repl()
end, { desc = "Send visual selection to REPL" })
vim.keymap.set("n", "pya", function()
	require("nvim-python-repl").send_statement_definition()
end, { desc = "Send semantic unit to REPL" })
vim.keymap.set({ "n", "v", "i", "t" }, "pyg", function()
	require("nvim-python-repl").toggle_repl_win()
end, { desc = "Opens the REPL in a window split" })
--  R
--  LUA
vim.keymap.set("n", "cp1", function()
	vim.fn.setreg("+", vim.fn.expand("%"))
end, { desc = "Copy full file path to clipboard" })

vim.keymap.set("n", "cp2", function()
	vim.fn.setreg("+", vim.fn.expand("%:t") .. ":" .. vim.fn.line("."))
end, { desc = "Copy file name and current line number to clipboard" })

-- Oversatt
vim.keymap.set("n", "cp", function()
	vim.fn.setreg("+", vim.fn.expand("%:p"))
end)
vim.keymap.set("n", "cp1", function()
	vim.fn.setreg("+", vim.fn.expand("%"))
end)

-- vim.api.nvim_set_keymap("n", "ser", ":source Session.vim<CR>", { noremap = true, silent = true })
-- map ta :belowright split term://bash<cr><S-A>
-- map te :vsplit term://bash<cr><S-A>
-- " map tA :belowright split term://zsh<cr><S-A>
-- " map tE :vsplit term://zsh<cr><S-A>

-- map ctc :tabnew %<cr>

-- /home/joernih/.config/nvim/lua/config/keymaps.lua
-- map kmp :e /home/joernih/InitJIH/config/nvim/vim/keymapping.vim<cr>
-- map adh :e ~/HomepageJIH/_quarto.yml<CR>
-- map adhi :e ~/HomepageJIH/_quarto-intn.yml<CR>
-- map adhe :e ~/HomepageJIH/_quarto-extl.yml<CR>

-- "  Shortcuts
-- map cr :r !
-- map cb :!
-- map ce :e
-- map co :
-- map fin /
--
-- " Split
-- map c1 :split<cr>
-- map c2 :vsplit<cr>
-- map so :only<cr>
-- map yo :nohl<cr>
-- map cp :let @+ = expand('%:p')<cr>
-- map cp1 :let @+ = expand('%')<cr>
-- map cp2 :let @+ = expand('%:t') . ':' . line('.')<cr>
--
-- " tabs
-- map ct1 :edit ~/.vimrc<cr>
-- map ct2 :edit ~/.bashrc<cr>
-- map ct3 :edit ~/.zshrc<cr>
-- map ct :tabnew<cr>
-- map ctc :tabnew %<cr>
-- imap jj <esc>
-- " Settings
--
-- map srp :e ~/InitJIH/config/r/Rprofile<CR>
-- map sre :e ~/InitJIH/config/r/Renviron<CR>
-- map sea  :e ~/InitJIH/alias.sh<CR>
-- map sef  :e ~/InitJIH/functions_jih.sh<CR>
-- map ses  :e ~/InitJIH/symboliclinks<CR>
-- map sec  :e ~/InitJIH/README.md<CR>
-- map seb  :e ~/InitJIH/config/bash/bashrc<CR>
-- map sez  :e ~/InitJIH/config/zsh/zshrc<CRqm
-- map seq  :e ~/InitJIH/config/qtile/config.py<CR>
-- map seh  :e ~/InitJIH/config/hyprland/hyprland.conf<CR>
-- map sek  :e ~/InitJIH/kitty/kitty.conf<CR>
-- map seb  :e ~/InitJIH/config/bash/bashrc<CR>
-- map sez  :e ~/InitJIH/config/zsh/zshrc<CR>
-- map seq  :e ~/InitJIH/config/qtile/config.py<CR>
-- map seh  :e ~/InitJIH/config/hyprland/hyprland.conf<CR>
-- map sek  :e ~/InitJIH/kitty/kitty.conf<CR>
--
-- " Buffer
-- map ba :b#<CR>
-- map bn :buffer
-- " map bdel :%bd|edit#|bd#
-- map bl :buffers <CR>
-- map b1 :buffer 1 <CR>
-- map b2 :buffer 2 <CR>
-- map b3 :buffer 3 <CR>
-- map b4 :buffer 4 <CR>
-- map b5 :buffer 5 <CR>
-- map b6 :buffer 6 <CR>
-- map b7 :buffer 7 <CR>
-- map b8 :buffer 8 <CR>
-- map b9 :buffer 9 <CR>
-- map ta :belowright split term://bash<cr><S-A>
-- map te :vsplit term://bash<cr><S-A>
-- " map tA :belowright split term://zsh<cr><S-A>
-- " map tE :vsplit term://zsh<cr><S-A>
-- map cq <C-w><h>
-- map cx :q!<cr>
--
-- " Storing
-- map ww :w<cr>
-- map wq :w<CR>:q<CR>
-- map wa :wqall!<CR>
-- map qill :qall!<CR>
--
-- " Paths
-- map man  :e ~/Research/ManifoldDestiny/_quarto.yml<CR>
-- map mab  :e ~/Research/MD_BIBLE/_quarto.yml<CR>
-- map intl :e ~/Intweb/Lokallag/_quarto.yml<CR>
-- map intt :e ~/Intweb/Testbok/_quarto.yml<CR>
-- map inta :e ~/Intweb/Intwebpubadmin/README.md<CR>
-- map inb :e ~/Intweb/Bacheloroppgaven/_quarto-bok.yml<CR>
-- map inb :e ~/Intweb/Bacheloroppgaven/_quarto.yml<CR>
-- map inbw :e ~/Intweb/Bacheloroppgaven/_quarto-html.yml<CR>
-- map inbd :e ~/Intweb/Bacheloroppgaven/_quarto-docx.yml<CR>
-- map inbp :e ~/Intweb/Bacheloroppgaven/_quarto-pdf.yml<CR>
-- map ints :e ~/Intweb/Skolenokkelen/_quarto.yml<CR>
--
-- map rhy :e ~/Research/Hyperinflation/_quarto.yml<CR>
-- " Research
-- map rhya :e ~/Research/Hyperinflation/_quarto-artk.yml<CR>
-- map rhyw :e ~/Research/Hyperinflation/_quarto-html.yml<CR>
-- map rhyr :e ~/Research/Hyperinflation/prerender.R<CR>
-- map rhyc :e ~/Research/Hyperinflation/inst/script/mned_calib.csv<CR>
-- map rex :e ~/Research/ExchangeRate/_quarto.yml<CR>
-- map rem :e ~/Research/ModernMonetaryMacro/_quarto.yml<CR>
-- map red: e ~/Numerical/DataAnalyzer/_quarto.yml<CR>
-- map re0 :e ~/Research/ManifoldDestiny/_quarto.yml<CR>
-- map re0p :e ~/Research/ManifoldDestiny/MD_WASMP/ManifoldDestinyWASMP.Rproj<CR>
-- map re0d :e ~/Research/ManifoldDestiny/MD_WASMD/Rprojabc.qmd<CR>
-- map re0s :e ~/Research/ManifoldDestiny/MD_WASMS/README.md<CR>
-- map re0c :e ~/Research/ManifoldDestiny/MD_WASMC/README.qmd<CR>
-- map re01 :e ~/Research/ManifoldDestiny/MD_BOOK1/Main.qmd<CR>
-- map re02 :e ~/Research/ManifoldDestiny/MD_BOOK2/000main.qmd<CR>
-- map re2 :e ~/HomepageJIH/nonpublic/myblog/posts/pengefrihet/index.qmd<CR>
-- map re5 :e ~/Research/ECS530_Project_Paper/Project_paper_ECS530.qmd<CR>
-- map rec :e ~/HomepageJIH/nonpublic/jobb/CV/CV_Researcher_Jørn_Inge_Halvorsen.tex<CR>
-- "" Eks
-- map egw :e ~/HomepageJIH/nonpublic/egen/wcs/index.qmd<CR>
-- map ek0 :e ~/Teaching/Templates/_quarto.yml<CR>
-- map weq :e ~/Nedlastinger/quarto-web/_quarto.yml<CR>
-- map ins :e ~/HomepageJIH/initJIH/abc.sh<CR>
-- map adh :e ~/HomepageJIH/_quarto.yml<CR>
-- map adhi :e ~/HomepageJIH/_quarto-intn.yml<CR>
-- map adhe :e ~/HomepageJIH/_quarto-extl.yml<CR>
-- map adhr :e ~/HomepageJIH/prerendr.R<CR>
-- map adha :e ~/WASMA/README.md<cr>
-- map adhp :e ~/WASMP/index.qmd<cr>
-- map adhs :e ~/WASMS/README.md<cr>
-- map adhb :e ~/HomepageJIH/Bacheloroppgaven/index.qmd<CR>
-- map adhc :e ~/HomepageJIH/initsetup/initJIH/arch_install.sh<CR>
-- map adwa :e ~/HomepageJIH/WASM/WASMA/README.md<CR>
-- map adwp :e ~/HomepageJIH/WASM/WASMP/index.qmd<CR>
-- map adws :e ~/WASMS/README.md<CR>
-- map sew :e ~/InitJIH/config/hypr/hyprland.conf<CR>
-- map sef :e ~/HomepageJIH/initsetup/functions_jih.sh<CR>
-- map egm :e ~/HomepageJIH/nonpublic/egen/music/kompendium.qmd<CR>
-- map egq :e ~/HomepageJIH/nonpublic/egen/wcs/_uarto.qmd<CR>
-- map egw :e ~/HomepageJIH/nonpublic/egen/wcs/index.qmd<CR>
-- map te0 :e ~/Homepagejih/nonpublic/jobb/veiledning/index.qmd<cr>
-- map ve1 :e ~/HomepageJIH/nonpublic/jobb/veiledning/Masteroppgave/Masteroppgave.qmd<CR>
-- map ve2 :e ~/HomepageJIH/nonpublic/jobb/veiledning/master/Masteroppgave_Hege/index.qmd<CR>
-- map tew :e ~/Teaching/rwasm_repo/README.md<CR>
-- map tea :e ~/Teaching/rwasm_action/packages<CR>
-- map ted :e ~/Teaching/BOEA114_Digitalisering_og_arbeidsmetodar_for_oekonomar/taskpage.org
-- map tfi :e ~/Teaching/SFB30820Finansteori/_quarto.yml<CR>
-- map tfie :e ~/Teaching/SFB30820Finansteori/oppgaver/Eksamen_SFB30820_Finansteori_2025_V_K.qmd<CR>
-- map tpr :e ~/Teaching/OEKA201ProgrammingWebPage/_quarto.yml<CR>
-- map trr :e ~/Teaching/XXXReprodusableAI/_quarto.yml<CR>
-- map tpr :e ~/Teaching/OEKA201ProgrammingWebPage/_quarto.yml<CR>
-- " map tprb :e ~/Teaching/OEKA201ProgrammingWebPage/book/_quarto.yml<CR>
-- map tpra :e ~/Teaching/OEKA201ProgrammingWebPage/_quarto.yml<CR>  # leffe til mer
-- map tew :e ~/Teaching/OEKA201Assignment/assignment.qmd<CR>
-- map tma :e ~/Teaching/SFB10916Makrooekonomi/_quarto.yml<CR>
-- map tmaw :e ~/Teaching/SFB10916Makrooekonomi/_quarto-html.yml<CR>
-- map tmab :e ~/Teaching/SFB10916Makrooekonomi/_quarto-bokp.yml<CR>
-- map tmi :e ~/Teaching/SFB10816Mikrooekonomi/_quarto.yml<CR>
-- map qua :e ~/gitclones/quarto-web/_quarto.yml<CR>
-- map tes :e ~/Teaching/ECS530_Project_Paper/abc.qmd
--
-- " Administrasjon
-- map ad1 :!xdg-open https://www.hiof.no/for-ansatte/ansettelsesforhold/sidegjoremal-verv-eierinteresser/<CR>
-- map ad2 :!xdg-open $HOME/Teaching/Templates/SFB10816_BOEA203_Mikro_Plates/emnerapport/emnerapport-mal_mikro.odt<CR>
-- map ad3 :!xdg-open $HOME/Teaching/Templates/SFB30820_Finansteori_Plates/emnerapport/emnerapport-mal.odt<CR>
--
-- " Session
-- map sem :mksession!
-- map seo :e Session.vim<CR>
--
-- " Easy
-- nnoremap <A-h> <C-w>h
-- nnoremap <A-j> <C-w>j
-- nnoremap <A-k> <C-w>k
-- nnoremap <A-l> <C-w>l
-- tnoremap <A-h> <C-\><C-n><C-w>h
-- tnoremap <A-j> <C-\><C-n><C-w>j
-- tnoremap <A-k> <C-\><C-n><C-w>k
-- tnoremap <A-l> <C-\><C-n><C-w>l
--
-- " R configurations
-- map rk :RKill<cr>
-- map rs :RSTOP<cr>
--
-- " Keys
-- map ssj :e /home/joernih/.ssh/known_hosts<cr>
-- map skj :e /home/joernih/.ssh/github/tokensjih.txt<cr>
-- map skl :e /home/joernih/.ssh/github/tokenslto.txt<cr>
-- map rlib :e ~/R/x86_64-pc-linux-gnu-library/4.4/abc.qmd<cr>
-- map kmp :e /home/joernih/InitJIH/config/nvim/vim/keymapping.vim<cr>
-- map sej :e $HOME/.environJIH<cr>
-- map seb :e $HOME/.environBAS<cr>
--
-- " map kk :
-- map ser1 :e ~/InitJIH/config/r/Rprofile<CR>
-- map ser2 :e ~/InitJIH/config/r/Renviron<CR>
-- map sef  :e ~/InitJIH/functions.sh<CR>
-- map ses  :e ~/InitJIH/symboliclinks<CR>
-- map sev  :e ~/InitJIH/config/nvim/vim/init.vim<CR>
-- map sec  :e ~/InitJIH/README.md<CR>
-- map seb  :e ~/InitJIH/config/bash/bashrc<CR>
-- map sez  :e ~/InitJIH/config/zsh/zshrc<CR>
-- map seq  :e ~/InitJIH/config/qtile/config.py<CR>
-- map sek  :e ~/InitJIH/kitty/kitty.conf<CR>
-- map sov  :source ~/InitJIH/config/nvim/vim/init.vim<cr>
-- map abc  :e ~/InitABC/README.md<CR>
-- map gco  :e .git/config<CR>
-- map gig  :e .gitignore<CR>
-- map mar  :e ~/Research/ManifoldDestiny/_quarto.yml<CR>
-- map mas  :e ~/Research/ManifoldDestiny/MD_WASMS/README.md<CR>
-- map mad  :e ~/Research/ManifoldDestiny/MD_WASMD/<CR>
-- map map  :e ~/Research/ManifoldDestiny/MD_WASMP/README.md<CR>
-- map mac  :e ~/Research/ManifoldDestiny/MD_WASMC/<CR>
-- map gcsl :e $HOME/Numerical/gitc/shinylive/README.md<CR>
-- map gcse :e $HOME/Numerical/gitc/r-shinylive/README.md<CR>
-- map rpvm :e $HOME/R/x86_64-pc-linux-gnu-library/4.4/Hyperinflation/DESCRIPTION<CR>
--
-- " external
-- map senb :e $HOME/.environBAS<cr>
-- map renb :e $HOME/InitBAS/README.md<cr>
--
-- " quarto
-- map qov :e _variables.yml<cr>
-- map qoi :e index.qmd<cr>
-- map qor :e _quartol<cr>
-- map qof :e _quarto-external.yml<cr>
-- map qob :e _quarto-internal.yml<cr>
-- map qop :QuartoPreview<CR>
-- map qoc :QuartoClosePreview<CR>
--
-- " testing
-- map zsm :silent! !xdg-open file:///home/joernih/Sensur/SAM3/Innleveringer/pdf/output.pdf<CR>
-- map zpp :silent! !xdg-open https://hiof.eu.uniflowonline.com<CR>
-- map fmr :terminal ranger<CR>
-- map hba :e ~/.bash_history<CR>
-- map hvi :e ~/.local/share/nvim/shada/main.shada<CR>
-- map zgm :silent! !xdg-open https://www.gmail.com<CR>
-- map zpt :silent! !xdg-open https://mail.proton.me/u/0/inbox<CR>
-- map zdo :silent! !xdg-open https://www.document.no<CR>
-- map zpr :silent! !xdg-open https://joernih.github.io/OEKA201ProgrammingWebPage/<CR>
-- map ztmi :silent! !xdg-open https://joernih.github.io/SFB10816Mikrooekonomi/<CR>
-- map ztma :silent! !xdg-open https://joernih.github.io/SFB10916Makrooekonomi/<CR>
-- map zfi :silent! !xdg-open https://joernih.github.io/SFB30820Finansteori/<CR>
-- map zfie :silent! !xdg-open https://joernih/Teaching/SFB30820Finansteori/oppgaver/Eksamen_SFB30820_Finansteori_2025_V_K.qmd
-- map zmo :silent! !xdg-open https://outlook.office.com/mail/<CR>
-- map zyo :silent! !xdg-open https://youtube.com<CR>
-- map zabc :silent! !xdg-open "https://youtube.com" & xdg-open "https://chatgpt.com"<CR>
-- map prt :silent! !xdg-open https://hiof.eu.uniflowonline.com/#Dashboard<CR>
-- map zkr :silent! !xdg-open https://read.amazon.com/kindle-library?<CR>
-- map zxm :silent! !xdg-open https://x.com<CR>
-- map zid :silent! !xdg-open https://app.idagio.com/discover<CR>
-- map zch :silent! !xdg-open https://chatgpt.com<CR>
-- map zpe :silent! !xdg-open https://perplexity.com<CR>
-- map zgk :silent! !xdg-open https://grok.com<CR>
-- map zgh :silent! !xdg-open https://github.com<CR>
-- map zme :silent! !xdg-open https://medici.tv<CR>
-- map zlp :silent! !xdg-open https://lastpass.com/vault/?lpnorefresh=1<CR>
-- map zgd :silent! !xdg-open https://drive.google.com/drive/my-drive<CR>
-- map zgg :silent! !xdg-open https://docs.google.com/spreadsheets/d/1Gdf8xlaoCjAzDZ7h_vtGOib4fVx_aS_JMJnbRwLCsxg/edit?gid=0#gid=0<CR>
-- map vpb :silent! !xdg-open https://www.hiof.no/bibliotek/fagsider/index.html<CR>
-- map zgr :silent! !xdg-open https://docs.google.com/spreadsheets/d/1Gdf8xlaoCjAzDZ7h_vtGOib4fVx_aS_JMJnbRwLCsxg/edit?gid=1008962830#gid=1008962830<CR>
-- map zou :silent! !xdg-open https://platform.openai.com/usage<CR>
-- " gp
-- map gp :Gp
-- map gptn :GpTabNew<CR>
-- map gpto :GpChatToggle<CR>
-- map gpch :GpChatNew<CR>
-- map gppo :GpPopup<CR>
-- map gprw :GpRewrite<CR>
-- map gpre :GpRewrite<CR>
-- map gpim :GpImage<CR>
--
-- " Test
-- map rabc :! Rscript /home/joernih/abc.R<CR>
-- map apkp: e $HOME/InitJIH/packages/pckfull.txt<CR>
-- map apky: y $HOME/InitJIH/packages/yayfull.txt<CR>
-- map apkr: r $HOME/InitJIH/packages/rpkbase.txt<CR>
-- map zks :!xdg-open file:///home/joernih/Sensur/Klagesensur<CR>
-- map of :e<Space>
-- " https://docs.google.com/spreadsheets/d/1Gdf8xlaoCjAzDZ7h_vtGOib4fVx_aS_JMJnbRwLCsxg/edit?gid=79596627#gid=79596627
-- " https://docs.google.com/spreadsheets/d/1oHGIqZfzZqiv8iw-uJ-NcXORwJqIokNui56b08OhGl8/edit?gid=0#gid=0
