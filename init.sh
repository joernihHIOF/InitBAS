#!/bin/bash

# Define functions with six-letter names
config() {
    source $HOME/InitBAS/01_config.sh
}
symlin() {
    source $HOME/InitBAS/02_symlin.sh
}
pacman() {
    source $HOME/InitBAS/03_pacman.sh
}
webclo() {
    source $HOME/InitBAS/04_webclo.sh
}
plinst() {
    Rscript $HOME/InitBAS/05_plinst.R
}
updmac() {
	config
	pacman
	plinst
	webclo
	symlin
}

