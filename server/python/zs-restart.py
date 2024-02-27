from lib import *

serverPath = os.getcwd() + "/server/"

if (ps('ZoneServer')):
    print(
        'Finalizando ZoneServer e esperando 60 segundos para ver se foi finalizado.\nFinishing ZoneServer and waiting 60 seconds to see if it was finished.\n')
    run_program_without_output('kill ' + ps('ZoneServer'))
    x = 60
    while (x > 0):
        print('Aguarde ' + str(x) + ' segundo(s).\nWait ' + str(x) + ' second(s).\n')
        time.sleep(1)
        x = x - 1
    if (ps('ZoneServer') == False):
        print('ZoneServer finalizado.\nZoneServer finished.\n')
else:
    print('ZoneServer já está finalizado.\nZoneServer already finished.\n')


command = 'ZoneServer' if not get_argument('-i') else 'LD_PRELOAD=./injection.so ./ZoneServer'
if (run_server_part_without_output(command)):
    print(
        'Esperando 5 segundos para ver se o ZoneServer foi iniciado.\nWaiting 5 seconds to see if the ZoneServer was started.\n')
    run_program_without_output('sudo chmod -R 777 ' + serverPath)
    time.sleep(5)
    result = ps('ZoneServer')
    if (result):
        print('O ZoneServer foi iniciado.\nThe ZoneServer was started.\n')
    else:
        print('O ZoneServer não foi iniciado, tente novamente.\nThe ZoneServer was not started, try again.\n')
else:
    print('O ZoneServer já está iniciado.\nThe ZoneServer is already started.\n')
