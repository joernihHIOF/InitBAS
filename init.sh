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
plinst() {
    Rscript $HOME/InitBAS/04_plinst.R
}
webclo() {
    source $HOME/InitBAS/05_webclo.sh
}
updmac() {
	config
	pacman
	plinst
	webclo
	symlin
}

