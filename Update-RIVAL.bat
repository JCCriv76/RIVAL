Echo off
ren D:\OneDrive\Documents\GitHub\RIVAL\WWW\source\SDS.csv C:\Users\jccri\OneDrive\Documents\GitHub\RIVAL\WWW\source\SDS.old
del D:\OneDrive\Documents\GitHub\RIVAL\WWW\source\SDS.csv
Echo Getting daily.csv...
D:\OneDrive\Documents\GitHub\RIVAL\Curl\bin\curl -X GET "https://covidtracking.com/api/v1/states/daily.csv" --output D:\OneDrive\Documents\GitHub\RIVAL\WWW\Source\daily.csv
Echo Complete!
Echo Getting us-counties.csv...
D:\OneDrive\Documents\GitHub\RIVAL\Curl\bin\curl -X GET "https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-counties.csv" --output D:\OneDrive\Documents\GitHub\RIVAL\WWW\Source\us-counties.csv
Echo Complete!
Echo Getting capacity.csv...
D:\OneDrive\Documents\GitHub\RIVAL\scripts\ihme.bat
Echo Complete!
Echo Scraping Social Distancing Scorecard...
D:\OneDrive\Documents\GitHub\RIVAL\scripts\Get-Scrape.bat
Echo Refreshing Data Engine-State
D:\OneDrive\Documents\GitHub\RIVAL\scripts\auto-master.vbs
Echo Complete with all tasks
Pause
