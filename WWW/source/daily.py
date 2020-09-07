print('Performing initial checks...')
import os
filepath = './WWW/source/daily.csv';
if os.path.exists(filepath):
  os.remove(filepath)
else:
  print('daily.csv does not exist')
filepath = './WWW/source/us-counties.csv';
if os.path.exists(filepath):
  os.remove(filepath)
else:
  print('us-counties.csv does not exist')
filepath = './WWW/source/ihme.zip';
if os.path.exists(filepath):
  os.remove(filepath)
else:
  print('ihme.zip does not exist')
print('Ready to start updating')     

import wget
print('Step 1 of 3')
print('Downloading daily.csv from the COVID Tracking Project')
wget.download('https://api.covidtracking.com/v1/states/daily.csv', './WWW/source/daily-raw.csv')
print('\nDownloading us-counties.csv from the NY Times')
wget.download('https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-counties.csv', './WWW/source/us-counties.csv')
print('\nDownloading ihme-covid19.zip from IHME')
wget.download('https://ihmecovid19storage.blob.core.windows.net/latest/ihme-covid19.zip', './WWW/source/ihme.zip')                                                                                                     
print('\nStep 1 complete!')

import subprocess
print('Step 2 of 3: Unzip and parse')
print ("Un-zipping ihme.zip")
my_zip = "./WWW/source/ihme.zip" #file you want to extract
ziploc = "C:/Program Files/7-Zip/7z.exe" #location where 7zip is installed
cmd = [ziploc, 'e',my_zip ,'-o'+ './WWW/source' ,'Reference_hospitalization_all_locs.csv' ,'-r' ]
sp = subprocess.Popen(cmd, stderr=subprocess.STDOUT, stdout=subprocess.PIPE)

import pandas as pd
print('Parsing Reference_hospitalization_all_locs.csv')
df = pd.read_csv(".\WWW\source\Reference_hospitalization_all_locs.csv", usecols = ['location_id','date','V1','location_name','allbed_mean','ICUbed_mean','InvVen_mean','admis_mean','newICU_mean'])
df.to_csv(r'.\WWW\source\ihme.csv', index = False)

print ("Parsing daily-raw.csv to daily.csv")
df = pd.read_csv(".\WWW\source\daily-raw.csv", usecols = ['date','state','positive','lastUpdateEt','death','dateChecked','totalTestsViral','fips','positiveIncrease','totalTestResultsIncrease','deathIncrease'])
df.to_csv(r'.\WWW\source\daily.csv', index = False)
print('Step 2 complete!')

print('Step 3 of 3: Cleaning up...')
import os
os.remove("./WWW/source/daily-raw.csv")
os.remove("./WWW/source/ihme.zip")
os.remove("./WWW/source/Reference_hospitalization_all_locs.csv")
print ('Step 3 complete! ----RIVAL Sources have been successfully updated----')
