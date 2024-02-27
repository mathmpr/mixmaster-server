from lib import *

arguments = sys.argv

commands = {
	'-s': 'sudo python3 ./server/python/start.py',
	'-k': 'sudo python3 ./server/python/kill.py',
	'-r': 'sudo python3 ./server/python/restart.py',
	'-ir': 'sudo python3 ./server/python/instant-restart.py',
	'-ik': 'sudo python3 ./server/python/instant-kill.py',
	'-izs': 'sudo python3 ./server/python/izs-restart.py',
	'-zs': 'sudo python3 ./server/python/zs-restart.py',
	'-cc': 'sudo python3 ./server/python/init.py',
}

options = [
	'-injection',
	'-rdb',
	'-skip-db',
]

invalidCommand = len(arguments) < 2
if not invalidCommand:
	invalidCommand = arguments[1] not in commands

sOptions = ''
if len(arguments) > 2:
	for option in options:
		if option in arguments:
			sOptions += option + ' '

sOptions = sOptions.strip()

if invalidCommand:
	print('Uso: ./manage.sh -command\n')
	print((BOLD + GREEN) + 'Comandos disponíveis para o servidor:\nCommands available for the server\n' + (RESET))
	print('  ' + (BOLD + CYAN) + '-s ' + (RESET) + ' para iniciar todas as partes do servidor\n  ' + (BOLD + CYAN) + '-s ' + (RESET) + ' to start all server parts\n')
	print('  ' + (BOLD + CYAN) + '-k ' + (RESET) + ' para finalizar todas as partes do servidor\n  ' + (BOLD + CYAN) + '-k ' + (RESET) + ' to finish all server parts\n')
	print('  ' + (BOLD + CYAN) + '-r ' + (RESET) + ' para reiniciar todas as partes do servidor\n  ' + (BOLD + CYAN) + '-r ' + (RESET) + ' to restart all server parts\n')
	print('  ' + (BOLD + CYAN) + '-ir ' + (RESET) + ' para reiniciar todas as partes do servidor, sendo a ZoneServer finalizada instantaneamente\n  ' + (BOLD + CYAN) + '-ir ' + (RESET) + ' to restart all server parts, being the ZoneServer instantly finished\n')
	print('  ' + (BOLD + CYAN) + '-ik ' + (RESET) + ' para matar todas as partes do servidor, sendo a ZoneServer finalizada instantaneamente\n  ' + (BOLD + CYAN) + '-ik ' + (RESET) + ' to kill all server parts, being the ZoneServer instantly finished\n')
	print('  ' + (BOLD + CYAN) + '-izs ' + (RESET) + ' para matar a ZoneServer instantaneamente e reiniciar na sequencia\n  ' + (BOLD + CYAN) + '-izs ' + (RESET) + ' to kill the ZoneServer instantly and restart in the sequence\n')
	print('  ' + (BOLD + CYAN) + '-zs ' + (RESET) + ' para reiniciar a ZoneServer\n  ' + (BOLD + CYAN) + '-zs ' + (RESET) + ' to restart the ZoneServer\n')
	print('  ' + (BOLD + CYAN) + '-cc ' + (RESET) + ' continua a configuração após configure.sh\n  ' + (BOLD + CYAN) + '-cc ' + (RESET) + ' continues the configuration after configure.sh\n')

	print((BOLD + YELLOW) + 'Opções disponíveis para os comandos:\nOptions available for commands:\n' + (RESET))
	print('  ' + (BOLD + CYAN) + '-injection ' + (RESET) + ' para incluir a Injection na inicialização da ZoneServer\n  ' + (BOLD + CYAN) + '-injection ' + (RESET) + ' to include Injection in the ZoneServer startup\n  (compatível com ' + RED + ' -s,-r,-ir,-zs,-izs ' + RESET + ' / compatible with ' + RED + ' -s,-r,-ir,-zs,-izs ' + RESET + ' )\n')
	print('  ' + (BOLD + CYAN) + '-rdb ' + (RESET) + ' para reiniciar o banco de dados\n  ' + (BOLD + CYAN) + '-rdb ' + (RESET) + ' to restart the database\n  (compatível com ' + RED + ' -cc ' + RESET + ' / compatible with ' + RED + ' -cc ' + RESET + ' )\n')
	print('  ' + (BOLD + CYAN) + '-skip-db ' + (RESET) + ' para pular todo o processo de instalação do MySQL e inicialização dos banco de dados\n  ' + (BOLD + CYAN) + '-skip-db ' + (RESET) + ' to skip the entire MySQL installation process and start the databases\n  (compatível com ' + RED + ' -cc ' + RESET + ' / compatible with ' + RED + ' -cc ' + RESET + ' )\n')

else:
	command = commands.get(arguments[1]) + ' ' + sOptions
	command = command.strip()
	subprocess.run(command, shell=True, check=True)