"""Python Replacing Bash"""
import os
import subprocess
import shutil
import psutil
from pprint import pprint

# Cmd Line Interface
import click
# Logging
import logging
logging.basicConfig(filename='generate.log', 
	encoding='utf-8', level=logging.DEBUG)

# Config (User Input)

app_name = "Fred"			# app name
print('app_name init', app_name)

pages = [
		{'name': "Home", 	# Page name, link
		'title': "Home",			# Page title
		'html': "index.html",			# Path to html 
		}
		]
print('pages init', pages)		

static = [
		{			# static files - .css, .js, .img, ...
		'name': "",		# file name
		'path': "",		# path where file is generated
		'content': "",	# path to file containing content 
		}
		]
print('static', static)		


#USER_INPUT = dict(app_name, pages, static)
USER_INPUT = {"app_name": app_name, "pages": pages, "static": static}

print("UserInputInit", USER_INPUT)

# Click def'n
@click.command()
@click.option()
@click.argument('app_name', nargs=1)	# Fred or Fred_Stuff or ...

# name, title, html,
# loops as necessary
@click.argument('page_count', nargs=1)	# Number of pages desired
@click.argument('page_name', nargs=1)
@click.argument('page_title', nargs=1)
@click.argument('page_html', nargs=1, type=click.File('r'))

# name, dest path, content path
# loops as necessary
@click.argument('static_name', nargs=1)		
@click.argument('static_dest_path', nargs=1, type=click.Path(exists=True))
@click.argument('static_content_file', nargs=1, type=click.File('r'))


#
# # Get Input using Click
#
def getInput(USER_INPUT):

	USER_INPUT[app_name] = click.prompt('Please enter the app name', type=str)
# Pages	
	# click.echo('You may specify as many pages as you wish')
# click.echo('Each page requires a name, title and the filepath of its html')
# pg_count = click.prompt('How many pages do you want?', default=1, type=int)

# for pg_num in range(pg_count):
# 	USER_INPUT['pages'[page_num]] =
# 		{name: {page_name}, title: {page_title}, html: {page_html}}
# Statics
# click.echo('You may specify as many static files as you wish')
# click.echo('Each file requires a name, destination and the filepath of its content')
# f_count = click.prompt('How many static files do you want?', default=1, type=int)

#for f_num in range(f_count):
	# USER_INPUT['static(f_num)'] = 
	# 	{name: {static_name}, path: {static_dest_path}, content: {static_content_file}}

#
# # Create dirs
#
def createDirs(USER_INPUT):
	pass

#
# # Create Static Files
#
def createStatic(USER_INPUT):
	pass


#
# # Create app
#
def createApp(USER_INPUT):
	pass


# 
# # Run app
#


#
# # main
#
def main():
	logging.basicConfig(level=logging.DEBUG)
	logger.info("Just logger")
	getInput(USER_INPUT)
	createDirs(USER_INPUT)
	createStatic(USER_INPUT)
	createApp(USER_INPUT)

	if __name__ == '__main__':
		main()