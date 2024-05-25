#!/bin/bash

source ./gnucobol-lib.sh

# --- GnuCOBOL Programmer’s Guide https://gnucobol.sourceforge.io/HTML/gnucobpg.html
#   - 2.1.1 Language Reserved Words
# For any given version of GnuCOBOL you can also list the full current set of reserved words by
# running cobc with --list-reserved, --list-intrinsic, --list-system as well as --list-
# mnemonics. Again subject to variation depending on usage of the --std line command.

gnucobol_command "cobc --list-reserved"
gnucobol_command "cobc --list-intrinsic"
gnucobol_command "cobc --list-system"
gnucobol_command "cobc --list-mnemonics"

ok_exit_w
