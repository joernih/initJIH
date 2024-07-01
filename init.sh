#!/bin/bash

# Define functions with four-letter names
config() {
    source $HOME/InitJIH/01_config.sh
}
pacman() {
    source $HOME/InitJIH/02_pacman.sh
}
plinst() {
    Rscript $HOME/InitJIH/03_plinst.R
}
webclo() {
    source $HOME/InitJIH/04_webclo.sh
}
symlin() {
    source $HOME/InitJIH/05_symlin.sh
}
updmac() {
	config
	pacman
	plinst
	webclo
	symlin
}


