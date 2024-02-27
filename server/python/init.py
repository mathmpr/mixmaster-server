from lib import *

remakeDb = get_argument('-rdb')
skipDb = get_argument('-skip-db')

userAndPwd = 'default'
if not skipDb:
	if (shutil.which('mysql') is None):
		userAndPwd = input("\nSenha para o root, novo user mysql e senha do novo user MySQL\nPassword for root, new mysql user and password for the new MySQL user: ")
		print('\nO input anterior será usado para criar um user e senha no jogo também.\nThe previous input will be used to create a user and password in the game too.')
		print('\nInstalando MySQL, isso pode demorar algum tempo.\nInstalling MySQL, this may take some time.\n')
		subprocess.run('sudo '+ get_server_path() +'/python/extras/download_mysql.sh', shell=True, check=True)
		subprocess.run('sudo '+ get_server_path() +'/python/extras/configure_mysql.sh ' + userAndPwd, shell=True, check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
		with open('./root', 'w') as file:
			file.write(userAndPwd)
		
	with open('./root', 'r') as file:
		userAndPwd = file.read()
		
	result = execute_command('mysql -u '+ userAndPwd +' -p'+ userAndPwd +' -e "USE gamedata;"', True)
	haveToCreateDb = 'ERROR 1049' in result.replace('\n', '')
		
	if haveToCreateDb or remakeDb:

		print('\nCriando banco de dados MySQL.\nCreating MySQL databases.\n')

		if remakeDb:
			print('Removendo banco de dados MySQL.\nRemoving MySQL databases.\n')
			execute_command('mysql -u ' + userAndPwd + ' -p' + userAndPwd + ' -e "DROP DATABASE IF EXISTS gamedata;"')
			execute_command('mysql -u ' + userAndPwd + ' -p' + userAndPwd + ' -e "DROP DATABASE IF EXISTS LogDB;"')
			execute_command('mysql -u ' + userAndPwd + ' -p' + userAndPwd + ' -e "DROP DATABASE IF EXISTS Member;"')
			execute_command('mysql -u ' + userAndPwd + ' -p' + userAndPwd + ' -e "DROP DATABASE IF EXISTS S_Data;"')
			execute_command('mysql -u ' + userAndPwd + ' -p' + userAndPwd + ' -e "DROP DATABASE IF EXISTS Web_Account;"')

		if remakeDb:
			print('Recriando banco de dados MySQL.\nRecreating MySQL databases.\n')

		execute_command('mysql -u ' + userAndPwd + ' -p' + userAndPwd + ' < ./server/database/create_databases.sql')
		execute_command('mysql -u ' + userAndPwd + ' -p' + userAndPwd + ' -f gamedata < ./server/database/gamedata.sql')
		execute_command('mysql -u ' + userAndPwd + ' -p' + userAndPwd + ' -f LogDB < ./server/database/LogDB.sql')
		execute_command('mysql -u ' + userAndPwd + ' -p' + userAndPwd + ' -f Member < ./server/database/Member.sql')
		execute_command('mysql -u ' + userAndPwd + ' -p' + userAndPwd + ' -f S_Data < ./server/database/S_Data.sql')
		execute_command('mysql -u ' + userAndPwd + ' -p' + userAndPwd + ' -f Web_Account < ./server/database/Web_Account.sql')
		execute_command('mysql -u ' + userAndPwd + ' -p' + userAndPwd + ' -f Member -e "ALTER TABLE Player MODIFY Passwd VARCHAR(45) DEFAULT \'\' NOT NULL;"')
		execute_command('mysql -u ' + userAndPwd + ' -p' + userAndPwd + ' -f Member -e "INSERT INTO Player(PlayerID, Passwd, Email) VALUES (\'' + userAndPwd + '\', PASSWORD(\'' + userAndPwd + '\'), \'matheusprador@gmail.com\');"')

with open('./root', 'r') as file:
	userAndPwd = file.read()

name = execute_command('nmcli connection show', True)
name = name.split('\n')
name = name[1].split('  ')
name = name[0].strip()
deviceName = execute_command('nmcli -f GENERAL.DEVICE device show', True).split('\n')[0].strip().split('  ')[-1].strip()
if name != deviceName:
	print('Configurando rede.\nConfiguring network.\n')
	ip = execute_command('nmcli -f IP4.ADDRESS device show ' + deviceName, True).strip().split('  ')[-1].strip()
	gateway = execute_command('nmcli -f IP4.GATEWAY device show ' + deviceName, True).strip().split('  ')[-1].strip()
	subprocess.run('sudo nmcli connection modify "' + name + '" connection.id "' + deviceName + '" ipv4.method manual ipv4.addresses "' + ip + '" ipv4.gateway "' + gateway + '"', shell=True, check=True)

execute_command('sudo chmod -R 777 ./server')

ip = execute_command('nmcli -f IP4.ADDRESS device show ' + deviceName, True).strip().split('  ')[-1].split('/')[0].strip()
wantReconfigure = 'y'
if os.path.exists('./configured'):
	wantReconfigure = input("Deseja reconfigurar o servidor?\nDo you want to reconfigure the server? (y/n): ")
	print('')

if wantReconfigure == 'y' or wantReconfigure == 'Y':

	print('Configurando o servidor do jogo.\nConfiguring the game server.\n')
	edit_config_file('./server/cypher/data/lgs.cfg', {
		"logindb_ID": 'root',
		"logindb_PW": userAndPwd,
		"logdb_ID": 'root',
		"logdb_PW": userAndPwd,
	})

	edit_config_file('./server/cypher/data/gms.cfg', {
		"GAMEDB_ID": 'root',
		"GAMEDB_PW": userAndPwd,
		"SYSDB_ID": 'root',
		"SYSDB_PW": userAndPwd,
		"LOGDB_ID": 'root',
		"LOGDB_PW": userAndPwd,
	})

	edit_config_file('./server/cypher/data/zs.cfg', {
		"GAMEDB_ID": 'root',
		"GAMEDB_PW": userAndPwd,
		"SYSDB_ID": 'root',
		"SYSDB_PW": userAndPwd,
		"LOGDB_ID": 'root',
		"LOGDB_PW": userAndPwd,
		"MEMBER_DB_ID": 'root',
		"MEMBER_DB_PW": userAndPwd,
		"ITEM_BILLDB_ID": 'root',
		"ITEM_BILLDB_PW": userAndPwd,
	})

	cypherData = './server/cypher/data'

	delete_folders(cypherData)
	execute_command('sudo rm -rf ./data')
	execute_command('cp -rf ./server/cypher/data ./')
	execute_command('sudo chmod -R 777 ./data')
	delete_folders(cypherData)

	child = pexpect.spawn('./server/cypher/cypher')
	while True:
		try:
			index = child.expect('.+', timeout=2)
			prompt_text = child.before.decode('utf-8')
			child.sendline('1')
		except pexpect.EOF:
			break

	execute_command('sudo chmod -R 777 ./data')
	execute_command('cp -rf ./data ./server/cypher/')
	execute_command('sudo chmod -R 777 ./server')
	execute_command('sudo rm -rf ./data')

	for item in os.listdir(cypherData):
		item_path = os.path.join(cypherData, item)
		if os.path.isdir(item_path):
			execute_command('sudo cp -f ' + item_path + '/encode/lgs_db.enc ./server/lgs/')
			execute_command('sudo cp -f ' + item_path + '/encode/gms_db.enc ./server/gms/')
			execute_command('sudo cp -f ' + item_path + '/encode/zs_db.enc ./server/zs1/')
			execute_command('sudo cp -f ' + item_path + '/key ./server/lgs/')
			execute_command('sudo cp -f ' + item_path + '/key ./server/gms/')
			execute_command('sudo cp -f ' + item_path + '/key ./server/zs1/')

	edit_config_file('./server/lgs/lgs.cfg', {
		"LOGIN_SERVER_IP": ip,
		"GAME_SERVER_IP": ip,
	})

	edit_config_file('./server/gms/gms.cfg', {
		"LS_IP": ip,
		"GC_BIND_IP": ip,
	})

	edit_config_file('./server/zs1/zs.cfg', {
		"ZC_BIND_IP": ip,
	})

	with open('./configured', 'a') as file:
		file.write('configured')

print('Iniciando o servidor.\nStarting the server.\n')

if remakeDb:
    subprocess.run('sudo python3 ./server/python/instant-kill.py', shell=True, check=True)

result = subprocess.run("sudo python3 ./server/python/running.py", shell=True, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
started = result.stdout.decode('utf-8').replace('\n', '').strip()
if started == '':
	subprocess.run('sudo python3 ./server/python/restart.py', shell=True, check=True)
	time.sleep(2)
else:
	print('O servidor do jogo está já rodando. Use ' + CYAN + ' ./manage.sh ' + RESET + ' e verifique os comandos disponíveis.\nThe game server is already running. Use ' + CYAN + ' ./manage.sh ' + RESET + ' and check the available commands.\n')

result = subprocess.run("sudo python3 ./server/python/running.py", shell=True, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
started = result.stdout.decode('utf-8').replace('\n', '').strip()
if started != '':

	lgs = read_ini_file('./server/lgs/lgs.cfg')

	print('O IP estático da maquina virtual é > ' + GREEN + ip + RESET + '\nThe static IP of the virtual machine is > ' + GREEN + ip + RESET + '\n')
	print('O utilizador e senha do MySQL é > ' + GREEN + userAndPwd + RESET + '\nThe MySQL user and password is > ' + GREEN + userAndPwd + RESET + '\n')
	print('O utilizador e senha do jogo é > ' + GREEN + userAndPwd + RESET + '\nThe game user and password is > ' + GREEN + userAndPwd + RESET + '\n')
	print('O servidor do jogo está rodando.\nThe game server is running.\n')
	print('Para iniciar o cliente do jogo, baixe o client do jogo em > https://drive.google.com/file/d/1Nn5gq11tA4nyxKXPFtuz5JE0mLs3T8tl/view?usp=share_link\nTo start the game client, download the game client at > https://drive.google.com/file/d/1Nn5gq11tA4nyxKXPFtuz5JE0mLs3T8tl/view?usp=share_link\n')
	print('Copie a linha > ' + GREEN + 'start MixMaster.exe ' + lgs['MYVERSION'] + ' ' + ip + ' 22005 0 ' + userAndPwd + ' ' + userAndPwd + ' 1 AURORA_BR exit' + RESET + ' para dentro de um arquivo .bat no mesmo local onde está o arquivo MixMaster.exe e depois de um duplo clique no arquivo .bat.\nCopy the line > ' + GREEN + 'start MixMaster.exe ' + lgs['MYVERSION'] + ' ' + ip + ' 22005 0 ' + userAndPwd + ' ' + userAndPwd + ' 1 AURORA_BR exit' + RESET + ' to inside a .bat file in the same place where the MixMaster.exe file is and then double click on the .bat file.\n')
