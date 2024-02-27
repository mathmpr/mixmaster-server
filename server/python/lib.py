import time
import subprocess
import os
import sys
import pexpect
import shutil

RESET = "\033[0m"
BOLD = "\033[1m"
RED = "\033[91m"
GREEN = "\033[92m"
YELLOW = "\033[93m"
CYAN = "\033[96m"

def delete_folders(directory):
	for item in os.listdir(directory):
		item_path = os.path.join(directory, item)
		if os.path.isdir(item_path):
			shutil.rmtree(item_path)

def read_ini_file(path):
	with open(path, 'r') as config_file:
		content = config_file.read()

	config = {}
	lines = content.split('\n')
	for x in range(len(lines) - 1):
		keyValue = lines[x].split('=')
		if len(keyValue) > 1:
			try:
				key = keyValue[0].strip()
				value = keyValue[1].strip()
				config[key] = value
			except IndexError:
				print('Error for file > ' + path + " > in line > " + lines[x])
	return config

def execute_command(command, get_output=False):
	if get_output:
		process = subprocess.run(command, capture_output=True, text=True, shell=True)
		return process.stdout + process.stderr
	process = subprocess.Popen(command, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, shell=True)
	process.communicate()


def auto_prompt(command, prompts):
	commandIndex = 0
	spawned = pexpect.spawn(command)
	while True:
		try:
			index = spawned.expect('.+', timeout=2)
		except pexpect.EOF:
			break
		except pexpect.TIMEOUT:
			try:
				if commandIndex == len(prompts) - 1:
					spawned.close()
					break
				spawned.sendline(prompts[commandIndex])
			except IndexError:
				spawned.close()
				break
			commandIndex += 1


def edit_config_file(path, values):
	with open(path, 'r') as config_file:
		content = config_file.read()

	lines = content.split('\n')
	for x in range(len(lines) - 1):
		keyValue = lines[x].split('=')
		if len(keyValue) > 1:
			try:
				key = keyValue[0].strip()
				value = keyValue[1].strip()
				if key in values:
					lines[x] = key + '=' + values[key]
			except IndexError:
				print('Error for file > ' + path + " > in line > " + lines[x])
	with open(path, 'w') as config_file:
		config_file.write('\n'.join(lines))

def get_server_path():
	return os.getcwd() + "/server/"

def get_argument(name, atIndex = False):
	arguments = sys.argv
	found = False
	for index, argument in enumerate(arguments):
		found = argument if (atIndex and atIndex == index and name in argument) else (argument if name in argument else False)
		if found:
			break
	return found


def space_limit(_str):
	while ('  ' in _str):
		_str = _str.replace('  ', ' ')
	return _str


def run_program_without_output(cmd):
	os.popen("sudo -S " + cmd + " > /dev/null &", 'w')

def run_server_part_without_output(name):
	folder = {
		"LoginServer": "lgs",
		"GameManagerServer": "gms",
		"ZoneServer": "zs1",
	}
	result = ps(name)
	if (result == False):
		os.popen("cd " + get_server_path() + folder[name] + "/ && ./" + name + " > /dev/null &", 'w')
		return True
	else:
		return False


def run(cmd):
	try:
		result = subprocess.check_output(cmd, shell=True)
		return result.strip()
	except:
		return False


def ps(name):
	result = subprocess.run("ps -aux", shell=True, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
	lines = result.stdout.decode('utf-8').split('\n')
	for line in lines:
		if (name in line):
			line = space_limit(line)
			return line.split(' ')[1]
	return False


def running():
	return ps('LoginServer') or ps('GameManagerServer') or ps('ZoneServer')


def instant_kill():
	if (ps('LoginServer')):
		run_program_without_output('sudo kill -9 ' + ps('LoginServer'))
	if (ps('GameManagerServer')):
		run_program_without_output('sudo kill -9 ' + ps('GameManagerServer'))
	if (ps('ZoneServer')):
		run_program_without_output('sudo kill -9 ' + ps('ZoneServer'))
