#!/usr/bin/python3.3
import os, argparse
from jinja2 import Environment, FileSystemLoader

# Command-line arguments and help text
stdin_parser=argparse.ArgumentParser(description='Compiles Jinja2 templates into a complete and hopefully usable file.', epilog='Report bugs to <vishwin@psu.edu>.')
stdin_parser.add_argument('inputfile', metavar='INPUTFILE', help='Input file')
stdin_parser.add_argument('-t', '--templates', metavar='DIR', help='Path to templates that INPUTFILE extends from', required=True)
stdin_parser.add_argument('-o', dest='outputfile', metavar='OUTPUTFILE', type=argparse.FileType('w'), help='Output file')
stdin_args=stdin_parser.parse_args()

# Render the jinja
env=Environment(loader=FileSystemLoader([os.path.normpath(stdin_args.templates), os.path.relpath(os.path.dirname(os.path.normpath(os.path.join(os.getcwd(), stdin_args.inputfile))))]))
rendered=env.get_template(os.path.basename(stdin_args.inputfile)).render()
if stdin_args.outputfile:
	stdin_args.outputfile.write(rendered)
else:
	print(rendered)
