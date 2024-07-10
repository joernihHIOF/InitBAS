#!/bin/bash

# Define functions with six-letter names
config() {
    source $HOME/InitBAS/01_config.sh
}
pacman() {
    source $HOME/InitBAS/02_pacman.sh
}
plinst() {
    Rscript $HOME/InitBAS/03_plinst.R
}
webclo() {
    source $HOME/InitBAS/04_webclo.sh
}
symlin() {
    source $HOME/InitBAS/05_symlin.sh
}
updmac() {
	config
	pacman
	plinst
	webclo
	symlin
}


