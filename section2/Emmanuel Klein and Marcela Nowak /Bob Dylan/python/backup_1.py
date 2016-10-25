from bs4 import BeautifulSoup
import urllib2


import "songPuller.py"

##url="http://www.azlyrics.com/d/dylan.html"



name="blackjackdavey"
url="http://www.azlyrics.com/lyrics/bobdylan/blackjackdavey.html"
##url="http://www.azlyrics.com/lyrics/bobdylan/thisdreamofyou.html"




class Song:
    name = ""
    year = 0
    album = ""
    artist = "Bob Dylan"

    def __init__(self,_name, _url):
        
        homePageLoad=urllib2.urlopen(_url)
        homePageSoup=BeautifulSoup(homePageLoad.read(), "html.parser")

        content= homePageSoup.body.find(class_="ringtone").next_sibling.next_sibling.next_sibling.contents

        contentString = ''.join(map(str,content))

        startLyricsIndex=contentString.find("-->")+3
        endLyricsIndex=contentString.find("</br>")

        lyrics=contentString[startLyricsIndex:endLyricsIndex]


        startIndexAlbum_1=contentString.find('<a data-toggle="collapse"')
        stringAlbum_1=(contentString[startIndexAlbum_1:len(contentString)])

        startIndexAlbum_2=stringAlbum_1.find('">"')+3
        endIndexAlbum_2=stringAlbum_1.find('</a>')

        stringAlbum_2=(stringAlbum_1[startIndexAlbum_2:endIndexAlbum_2])


        endIndexAlbumName=stringAlbum_2.find('"');


        album_name=stringAlbum_2[0:endIndexAlbumName]

        startIndexAlbumYear=stringAlbum_2.find('(')+1;
        endIndexAlbumYear=stringAlbum_2.find(')');


        album_year=stringAlbum_2[startIndexAlbumYear:endIndexAlbumYear]
        
        self.name = _name
        self.album = album_name
        self.year = album_year

    def printInfo(self):
        print("name: " + self.name)
        print("album: " + self.album)
        print("year: " + self.year)

    



song = Song(name, url)








