# Welcome to the Automated Multimedia System
This stack is built from the following:
- Radarr (For Movies)
- Sonarr (For TV Shows)
- Bazarr (For Subtitles)
- Deluge (Torrent Client)
- Jackett (Extended Indexer)
- Plex Server
- Radarr-Adder (Self written telegram bot to add movies and tv shows from remote)

# Environment Variables

- RADARR_API_KEY 
- SONARR_API_KEY
- TELEGRAM_BOT_TOKEN
- MANAGER_ID (int)
- MANAGER_USERNAME(string)
- GF_USERNAME(string)
- RADARR_IP **(for the use of the telegram bot)**
- SHARE_LOCATION **(where all the data will be saved)**
- TIME_ZONE **(your Time Zone in linux format)**

## Radarr-Adder ?? 
It all started from Radarr and thus it's called Radarr-Adder but today its compatible also with sonarr (90% compatible)
While using my Telegram bot to send me notifications from Radarr I decided to make it also search and add movies to my collection in Radarr (and tv-shows in Sonarr)


#### Features:

1.  Restrict access to a specific user name
2.  Get a list of movies and tv-shows with the buttons "Add to.." and "More Info"
3.  More Info will get you the overview of the item, trailer (if available) and imdb score (if available)
4.  When non-manager wants to add a movie, it sends an approve reqeust to the manager and updates the requesting user once approved.

![Screenshot1](https://github.com/dFurman/radarr-adder/raw/master/screenshots/1.jpg)
![Screenshot2](https://github.com/dFurman/radarr-adder/raw/master/screenshots/2.jpg)
