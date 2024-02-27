from lib import *

serverParts = ['ZoneServer']
for part in serverParts:
	while ps(part):
		run_program_without_output('sudo kill -9 ' + ps(part))
		time.sleep(1)

command = 'ZoneServer' if not get_argument('-i') else 'LD_PRELOAD=./injection.so ./ZoneServer'
if(run_server_part_without_output(command)):
	print('Esperando 5 segundos para ver se o ZoneServer foi iniciado.\nWaiting 5 seconds to see if the ZoneServer was started.\n')
	run_program_without_output('sudo chmod -R 777 '+ get_server_path())
	time.sleep(5)
	result = ps('ZoneServer')
	if(result):
		print('O ZoneServer foi iniciado.\nThe ZoneServer was started.\n')
	else:
		print('O ZoneServer não foi iniciado, tente novamente.\nThe ZoneServer was not started, try again.\n')
else:
	print('O ZoneServer já está iniciado.\nThe ZoneServer is already started.\n')