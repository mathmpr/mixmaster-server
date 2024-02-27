from lib import *

serverParts = ['LoginServer', 'GameManagerServer', 'ZoneServer']

_continue = True

for part in serverParts:
	if not _continue:
		print('Como houve uma falha ao iniciar umas das partes do servidor. Iremos finalizar todos os processos do servidor.\nHow there was a failure to start some of the server parts. We will finish all server processes.\n')
		instant_kill()
		break
		
	retryCount = 0

	while retryCount < 3:
		if part == 'ZoneServer':
			part = 'ZoneServer' if not get_argument('-i') else 'LD_PRELOAD=./injection.so ./ZoneServer' 
		if(run_server_part_without_output(part)):
			print('Esperando 5 segundos para ver se o '+ part +' foi iniciado.\nWaiting 5 seconds to see if the '+ part +' was started.\n')
			run_program_without_output('sudo chmod -R 777 '+ get_server_path())
			time.sleep(5)
			result = ps(part)
			if(result):
				print('O '+ part +' foi iniciado.\nThe ' + part + ' was started.\n')
				_continue = True
				break
			else:
				print('O '+ part +' não foi iniciado, vamos tentar inicia-lo novamente.\nThe '+ part +' was not started, let\'s try to start it again.\n')
				retryCount += 1
		else:
			print('O '+ part +' já está iniciado.\nThe '+ part +' is already started.\n')
			_continue = True
			break
		
	if retryCount == 3:
		print('Houve um erro iniciar '+ part +', tente iniciar manualmente e verifique a saída do programa.\nThere was an error starting '+ part +', try to start manually and check the output of the program.\n')
		_continue = False
		
if not _continue:
	print('Como houve uma falha ao iniciar umas das partes do servidor. Iremos finalizar todos os processos do servidor.\nHow there was a failure to start some of the server parts. We will finish all server processes.\n')
	instant_kill()