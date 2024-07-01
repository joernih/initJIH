map c1 :split<cr>
map c2 :vsplit<cr>
map so :only<cr>
map yo :nohl<cr>
map cp :let @+ = expand('%:p')<CR>
map cp1 :let @+ = expand('%')<CR>
" tabs
map c1 :split<cr>
map c2 :vsplit<cr>
map ct1 :edit ~/.vimrc<cr>
map ct2 :edit ~/.bashrc<cr>
map ct3 :edit ~/.zshrc<cr>
map ct :tabnew<cr>
map cx :tabnew %<cr>
imap jj <esc>
" Settings
map sea  :e $HOME/init/alias.sh
map ser1 :e ~/Init/config/r/Rprofile<CR>                         
map ser2 :e ~/Init/config/r/Renviron<CR>
map sea  :e ~/Init/alias_jih.sh<CR>
map sef  :e ~/Init/functions_jih.sh<CR>
map ses  :e ~/Init/symboliclinks<CR>
map sev  :e ~/Init/config/nvim/init.vim<CR>
map sec  :e ~/Init/README.md<CR>
map seb  :e ~/Init/config/bash/bashrc<CR>
map sez  :e ~/Init/config/zsh/zshrc<CR>
map seq  :e ~/Init/config/qtile/config.py<CR> 
map sek  :e ~/Init/kitty/kitty.conf<CR>
" Buffer
map ba :b#<CR>
map bn :buffer 
" map bdel :%bd|edit#|bd#
map bl :buffers <CR>
map b1 :buffer 1 <CR> 
map b2 :buffer 2 <CR> 
map b3 :buffer 3 <CR> 
map b4 :buffer 4 <CR> 
map b5 :buffer 5 <CR> 
map b6 :buffer 6 <CR> 
map b7 :buffer 7 <CR> 
map b8 :buffer 8 <CR> 
map b9 :buffer 9 <CR> 
map ta :belowright split term://bash<cr><S-A>
map te :vsplit term://bash<cr><S-A>
map tA :belowright split term://zsh<cr><S-A>
map tE :vsplit term://zsh<cr><S-A>
map cq <C-w><h>
map cx :q!<cr>
" Storing
map ww :w<cr>
map wq :w<CR>:q<CR> 
map wa :wqall!<CR>
map qill :qall!<CR>
" Paths
"" Selskap
map inti :e ~/intwebp/initJIH/README.md<CR>
map inta :e ~/numerical/gitclones/r4ds/_quarto.yml<CR>
map intn :e ~/intwebp/NKI/_quarto.yml<CR>
map intb :e ~/intwebp/Bacheloroppgaven/_quarto.yml<CR>
map ints :e ~/intwebp/Skolenokkelen/_quarto.yml<CR>
map intm :e ~/intwebp/Musikk/_quarto.yml<CR>
"" Numerical
map nu0 :e ~/numerical/wasm/rwasmactions/README.md<CR>
map nu1 :e ~/numerical/forked/shinylive/README.md<CR>
"" Research
map reh :e ~/research/Hyperinflation/_quarto.yml<CR>
map rex :e ~/research/ExchangeRate/_quarto.yml<CR>
map red: e ~/numerical/DataAnalyzer/_quarto.yml<CR>
map re0 :e ~/research/ManifoldDestiny/_quarto.yml<CR>
map re0p :e ~/research/ManifoldDestiny/MD_WASMP/ManifoldDestinyWASMP.Rproj<CR>
map re0d :e ~/research/ManifoldDestiny/MD_WASMD/abc.qmd<CR>
map re0s :e ~/research/ManifoldDestiny/MD_WASMS/README.md<CR>
map re0c :e ~/research/ManifoldDestiny/MD_WASMC/README.qmd<CR>
map re01 :e ~/research/ManifoldDestiny/MD_BOOK1/Main.qmd<CR>
map re02 :e ~/research/ManifoldDestiny/MD_BOOK2/000main.qmd<CR>
map re2 :e ~/homepageJIH/nonpublic/myblog/posts/pengefrihet/index.qmd<CR>
map re4 :e ~/research/ModernMonetaryMacro/_quarto.yml<CR>
map re5 :e ~/research/ECS530_Project_Paper/Project_paper_ECS530.qmd<CR>
map rec :e ~/homepageJIH/nonpublic/jobb/CV/CV_Researcher_Jørn_Inge_Halvorsen.tex<CR>
"" Eks
map egw :e ~/homepageJIH/nonpublic/egen/wcs/index.qmd<CR>
map ek0 :e ~/teaching/Templates/_quarto.yml<CR>
map ek1 :e ~/teaching/Templates/SFB10816_BOEA203_Mikro_Plates/Eksamen_BOEA203_2023_H_bokmal_kont.qmd<CR>
map ek2 :e ~/teaching/Templates/SFB10816_BOEA203_Mikro_Plates/Eksamen_SFB10816_2023_V_bokmal.qmd<CR>
map ek3 :e ~/teaching/Templates/SFB30820_Finansteori_Plates/Eksamen_SFB30820_Finansteori_K_H_2023.qmd<CR>
map ek4 :e ~/teaching/Templates/SFB10916_Makro_Plates/SFB10916_Eksamen_2023_S.Rmd<CR>
map weq :e ~/Nedlastinger/quarto-web/_quarto.yml<CR>
map ins :e ~/homepageJIH/initJIH/abc.sh<CR>
map ad0 :e ~/homepageJIH/_quarto.yml<CR>
map ad0h :e ~/homepageJIH/_quarto-internal.yml<CR>
map ad0e :e ~/homepageJIH/_quarto-external.yml<CR>
map ad0b :e ~/homepageJIH/Bacheloroppgaven/index.qmd<CR>
map ad0c :e ~/homepageJIH/initsetup/initJIH/arch_install.sh<CR>
map ad0N :e ~/homepageJIH/nonpublic/NKI/index.qmd<CR>
map ad0N :e ~/homepageJIH/nonpublic/NKI/kurs/<CR>
map adwa :e ~/homepageJIH/WASM/WASMA/README.md<CR>
map adwp :e ~/homepageJIH/WASM/WASMP/index.qmd<CR>
map adws :e ~/homepageJIH/WASM/WASMS/README.md<CR>
map sew :e ~/.config/hypr/hyprland.conf<CR>
map sea :e ~/homepageJIH/initsetup/alias_jih.sh<CR>
map sef :e ~/homepageJIH/initsetup/functions_jih.sh<CR> 
map egm :e ~/homepageJIH/nonpublic/egen/music/kompendium.qmd<CR>
map egq :e ~/homepageJIH/nonpublic/egen/wcs/_uarto.qmd<CR>
map egw :e ~/homepageJIH/nonpublic/egen/wcs/index.qmd<CR>
map te0 :e ~/homepagejih/nonpublic/jobb/veiledning/index.qmd<cr>
map ve1 :e ~/homepageJIH/nonpublic/jobb/veiledning/Masteroppgave/Masteroppgave.qmd<CR>
map ve2 :e ~/homepageJIH/nonpublic/jobb/veiledning/master/Masteroppgave_Hege/index.qmd<CR>
map tew :e ~/teaching/rwasm_repo/README.md<CR>
map tea :e ~/teaching/rwasm_action/packages<CR>
map tep :e ~/numerical/abcd/_quarto.yml<CR>
map ted :e ~/teaching/BOEA114_Digitalisering_og_arbeidsmetodar_for_oekonomar/taskpage.org
map tef :e ~/teaching/SFB30820Finansteori/_quarto.yml<CR>
map tep :e ~/teaching/OEKA201ProgrammingWebPage/_quarto.yml<CR>
map tex :e ~/teaching/SFB10816Mikrooekonomi/_quarto.yml<CR>
map teh :e ~/teaching/BOEA203Mikrooekonomi/_quarto.qmd<CR>
map tem :e ~/teaching/SFB10916Makrooekonomi/_quarto.yml<CR>
map temm :e ~/teaching/arkiv/SFB10916Makrooekonomi_hiofhvl/abc.Rmd<CR>
map qua :e ~/gitclones/quarto-web/_quarto.yml<CR>
map tes :e ~/teaching/ECS530_Project_Paper/abc.qmd
" Administrasjon
map ad1 :!xdg-open https://www.hiof.no/for-ansatte/ansettelsesforhold/sidegjoremal-verv-eierinteresser/<CR>
map ad2 :!xdg-open $HOME/teaching/Templates/SFB10816_BOEA203_Mikro_Plates/emnerapport/emnerapport-mal_mikro.odt<CR>
map ad3 :!xdg-open $HOME/teaching/Templates/SFB30820_Finansteori_Plates/emnerapport/emnerapport-mal.odt<CR>
" Session
map sem :mksession!
map ser :source Session.vim<CR>
map seo :e Session.vim<CR>
" Easy
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
" R configurations
map rk :RKill<cr>
map rs :RSTOP<cr>
" Keys
map ssj :e /home/joernih/.ssh/known_hosts<cr>
map skj :e /home/joernih/.ssh/github/tokensjih.txt<cr>
map skl :e /home/joernih/.ssh/github/tokenslto.txt<cr>
map rlib :e ~/R/x86_64-pc-linux-gnu-library/4.4/abc.qmd<cr>

map kmp :e /home/joernih/Init/config/nvim/keymapping.vim<cr>








