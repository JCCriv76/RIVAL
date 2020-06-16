@Echo off

Echo Getting daily.csv...
%CD%\Curl\bin\curl -X GET "https://covidtracking.com/api/v1/states/daily.csv" --output %CD%\WWW\Source\daily.csv
Echo Complete!

Echo Getting us-counties.csv...
%CD%\Curl\bin\curl -X GET "https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-counties.csv" --output %CD%\WWW\Source\us-counties.csv
Echo Complete!

Echo Getting capacity.csv...
%CD%\Curl\bin\curl -X GET "https://ihmecovid19storage.blob.core.windows.net/latest/ihme-covid19.zip" --output ihme.zip
C:\"Program Files\7-Zip\"7z e ihme.zip -aoa -o%CD%\WWW\source\
del %CD%\ihme.zip
Echo Complete!

Echo Downloading Scraped Social Distancing Scorecard...
%CD%\Curl\bin\curl -X GET "https://www.parsehub.com/api/v2/projects/tVTUmkfOXoQD/last_ready_run/data?api_key=tX4QGAXcnEBR&format=csv" --output SDS.gzip
C:\"Program Files\7-Zip\"7z e SDS.gzip -so *.csv > %CD%\WWW\source\SDS.csv
del %CD%\sds.gzip

#Echo Refreshing Data Engines
#pushd %~d0
#cscript %CD%\scripts\auto-master.vbs

Echo Complete with all tasks
Pause
