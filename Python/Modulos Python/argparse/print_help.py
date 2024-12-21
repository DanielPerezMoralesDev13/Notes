#!/usr/bin/env python3

# Author: Daniel Benjamin Perez Morales
# GitHub: https://github.com/DanielPerezMoralesDev13
# Email: danielperezdev@proton.me

from argparse import ArgumentParser
from sys import stderr, exit

parser: ArgumentParser = ArgumentParser(description = "Programa de ejemplo")
parser.add_argument("-i", "--input", required = True, help = "Fichero de entrada")
parser.print_help(file = stderr)
exit(1)