from lib import *

subprocess.run("sudo python3 "+ get_server_path() +"/python/kill.py", shell=True, check=True)
time.sleep(5)
subprocess.run("python3 "+ get_server_path() +"/python/start.py", shell=True, check=True)