from lib import *

serverParts = ['LoginServer', 'GameManagerServer']
for part in serverParts:
	while ps(part):
		run_program_without_output('sudo kill -9 ' + ps(part))
		time.sleep(1)

if(ps('ZoneServer')):
	print('Finalizando ZoneServer e esperando 60 segundos para ver se foi finalizado.\nFinishing ZoneServer and waiting 60 seconds to see if it was finished.\n')
	run_program_without_output('kill ' + ps('ZoneServer'))
	x = 60
	while(x > 0):
		print('Aguarde ' + str(x) + ' segundo(s).\nWait ' + str(x) + ' second(s).\n')
		time.sleep(1)
		x = x - 1
	if(ps('ZoneServer') == False):
		print('ZoneServer finalizado.\nZoneServer finished.\n')
else:
	print('ZoneServer já está finalizado.\nZoneServer already finished.\n')