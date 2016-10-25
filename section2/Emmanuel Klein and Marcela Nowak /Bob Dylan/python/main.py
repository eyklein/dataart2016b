from bs4 import BeautifulSoup
import urllib2
import json
import time



import imp
importSong = imp.load_source('song class', 'songPuller.py')
importSongList = imp.load_source('song list', 'listSongs.py')





songs=[]
counter=0

## 157
numberGet=395/5+1 ##increment this this 
numSongs=5 ##change this at beggining



minCycle=numberGet*numSongs

maxCycle=numSongs+minCycle




json_file_name="data_" +str(numberGet)+".json"


a = []

##a.append(entry)
with open(json_file_name, mode='w') as f:
    f.write(json.dumps(a
                       , indent=2))

for element in importSongList.list:
    print counter
    if(counter>=minCycle and counter<maxCycle):
        song=importSong.Song(element.get("s"), element.get("h"))
        songs.append(song)
        ##print[element.get("s") + " : " + element.get("h")]
        song.printInfo()

        with open(json_file_name) as feedsjson:
            feeds = json.load(feedsjson)

        data = {'song': song.name, 'album': song.album, 'year': song.year, 'artist':song.artist, 'lyrics':song.lyrics, 'number_get': counter}
        feeds.append(data)
        with open(json_file_name, mode='w') as f:
            f.write(json.dumps(feeds, indent=2))
   


        time.sleep(2.0) # seconds
    counter=counter+1

    

 

 


for song in songs:
    song.printInfo()







##        data = {'song': song.name, 'album': song.album, 'year': song.year, 'artist':song.artist, 'lyrics':song.lyrics}
  
##        with open('data.json', 'w') as outfile:
##            json.dump(data, outfile, indent=4, sort_keys=True, separators=(',', ':'))


