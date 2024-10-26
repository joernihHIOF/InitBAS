# Init
alias nvd="nvim -u $HOME/InitBAS/config/nvim/init.vim"
alias nvc="nvim $HOME/InitBAS/README.md -u $HOME/InitBAS/config/nvim/init.vim"
alias t='tmux'
alias z='zellij'
alias v='nvim'
alias r='ranger'
alias c='clear'
alias h='history'
alias s='source'
# Quarto
alias qr='quarto render . & disown'
alias qp='quarto preview . & disown'
# Other
alias updBAS='source $HOME/InitBAS/init.sh; updmac' 
# ## General
# Remote access
alias cal='cal -y -w -m'
alias nomachine='/usr/NX/bin/nxplayer & disown' #for the program itself
alias nomachines='/usr/NX/bin/nxclient -admin & disown' #– for the “service” monitor
# Change shell
alias chsb='chsh -s /bin/bash'
alias chsz='chsh -s /bin/zsh'
#
alias lscan='sudo arp-scan --localnet'
alias ipi='ip route get 1 | awk "{print \$7}"'
alias ipe='curl -4 icanhazip.com'

