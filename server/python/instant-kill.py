from lib import *

serverParts = ['LoginServer', 'GameManagerServer', 'ZoneServer']
for part in serverParts:
	while ps(part):
		run_program_without_output('sudo kill -9 ' + ps(part))
		time.sleep(1)