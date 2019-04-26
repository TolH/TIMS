import time, os
import glob
file_logo = glob.glob('D:/Steam/steamapps/common/Arma 3/*.md') # Logo first to wait for logs file to be crated
file_logs = glob.glob('D:/Steam/steamapps/common/Arma 3/SC_EXILE/*.rpt') # Log file
logo_get = max(file_logo, key=os.path.getctime) # Latest logo file while waiting for logs
rpt_get = max(file_logs, key=os.path.getctime) # Latest log file
a = open(logo_get, 'r')
b = open(rpt_get, 'r')
var = 20
while var > 0:              
    logo1 = a.readline()
    var = var -1
    logo = logo1.rstrip('\n')
    time.sleep(0.03)
    print logo
    if var == 1:
        break
time.sleep(6) # RPT log should be created by the server by now
while True:
    rpt = b.readline()
    if rpt.find(":") != -1:
        line = rpt.rstrip('\n')
        time.sleep(0.02) # Best defilling speed to be able to still read something also less cpu until it reach end of file
        print line
    else:
		time.sleep(0.5)
