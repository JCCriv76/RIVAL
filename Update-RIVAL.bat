Echo off
Echo Getting daily.csv...
C:\Users\jccri\OneDrive\Documents\GitHub\RIVAL\Curl\bin\curl -X GET "https://covidtracking.com/api/v1/states/daily.csv" --output C:\Users\jccri\OneDrive\Documents\GitHub\RIVAL\WWW\Source\daily.csv
Echo Complete!
Echo Getting us-counties.csv...
C:\Users\jccri\OneDrive\Documents\GitHub\RIVAL\Curl\bin\curl -X GET "https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-counties.csv" --output C:\Users\jccri\OneDrive\Documents\GitHub\RIVAL\WWW\Source\us-counties.csv
Echo Complete!
Echo Getting capacity.csv...
C:\Users\jccri\OneDrive\Documents\GitHub\RIVAL\scripts\ihme.bat
Echo Complete!
#Echo Scraping Social Distancing Scorecard...
#C:\Users\jccri\OneDrive\Documents\GitHub\RIVAL\scripts\Get-Scrape.bat
Echo Refreshing Data Engine-State
C:\Users\jccri\OneDrive\Documents\GitHub\RIVAL\scripts\auto-state.vbs
Echo Refreshing Data Engine-Capacity
C:\Users\jccri\OneDrive\Documents\GitHub\RIVAL\scripts\auto-capacity.vbs
Echo Refreshing Data Engine-County
C:\Users\jccri\OneDrive\Documents\GitHub\RIVAL\scripts\auto-county.vbs
Echo Complete with all tasks
