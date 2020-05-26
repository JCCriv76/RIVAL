
C:\Users\jccri\OneDrive\Documents\GitHub\RIVAL\Curl\bin\curl -X GET "https://www.parsehub.com/api/v2/projects/tVTUmkfOXoQD/last_ready_run/data?api_key=tX4QGAXcnEBR&format=csv" --output SDS.gzip

C:\"Program Files\7-Zip\"7z e SDS.gzip -so *.csv > C:\Users\jccri\OneDrive\Documents\GitHub\RIVAL\WWW\source\SDS.csv


