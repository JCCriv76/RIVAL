import subprocess
my_zip = "./WWW/source/ihme.zip" #file you want to extract
ziploc = "C:/Program Files/7-Zip/7z.exe" #location where 7zip is installed
cmd = [ziploc, 'e',my_zip ,'-o'+ './WWW/source' ,'Reference_hospitalization_all_locs.csv' ,'-r' ]
sp = subprocess.Popen(cmd, stderr=subprocess.STDOUT, stdout=subprocess.PIPE)
  