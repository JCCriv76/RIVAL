
D:\OneDrive\Documents\GitHub\RIVAL\Curl\bin\curl -X GET "https://ihmecovid19storage.blob.core.windows.net/latest/ihme-covid19.zip" --output ihme.zip

C:\"Program Files\7-Zip\"7z e ihme.zip -aoa -oD:\OneDrive\Documents\GitHub\RIVAL\WWW\source\

del D:\OneDrive\Documents\GitHub\RIVAL\ihme.zip
