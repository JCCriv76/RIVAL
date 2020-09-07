@Echo off

python ./WWW/source/daily.py

#Echo Downloading Scraped Social Distancing Scorecard...
#%CD%\Curl\bin\curl -X GET "https://www.parsehub.com/api/v2/projects/tVTUmkfOXoQD/last_ready_run/data?api_key=tX4QGAXcnEBR&format=csv" --output SDS.gzip
#C:\"Program Files\7-Zip\"7z e SDS.gzip -so *.csv > %CD%\WWW\source\SDS.csv
#del %CD%\sds.gzip

#Echo Refreshing Data Engines
#pushd %~d0
#cscript %CD%\scripts\auto-master.vbs

