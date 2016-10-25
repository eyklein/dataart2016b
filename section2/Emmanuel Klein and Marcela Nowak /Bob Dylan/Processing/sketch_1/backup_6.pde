//import rita.*;
//import java.util.*;
//import processing.pdf.*;

//JSONArray jsonSongs;
//Song[] songs;
//ArrayList<Album> albums;
//import processing.pdf.*;

//int counter=0;

//int centerDiam = 700;
//float smallTextSize=15;
//float highlightTextSize=35;
//int largeTextSize=10;

//int albumNumber=1;//start album 1 because unalbumed songs are 0
//int lastAlbumNumber=5;//last album if num is to big will get all albums (37 albums total)
////memmory problem do 10 at a time with 


//PGraphics overlay, overlay_2, overlay_text, background;

//int dimention_year_w=400;
//int dim_album_w=1500;
//int dim_album_h=1000;
////int dimention_year_h=100;

//PFont gothicFont;



//void setup() {
//  //size(5000, 5000);
//  //size(15000, 10000, PDF, "Bob Dylan Albums "+albumNumber + " - " +lastAlbumNumber + ".pdf");
//   size(1500, 1000);
//  //beginRecord(PDF, "filename.pdf"); 
//  //size(1500, 100);
//  smooth(10);
  
//  gothicFont = loadFont("CenturyGothic-48.vlw");
  
  
//  overlay = createGraphics(1000, 100);
//  overlay_2=createGraphics(1000, 1000);
//  overlay_text=createGraphics(1000, 1000);
//  background = createGraphics(1000, 1000);
  
//  //init
//  background.beginDraw();
//  background.endDraw();
//  overlay.beginDraw();
//  overlay.endDraw();
//  overlay_2.beginDraw();
//  overlay_2.endDraw();
//  overlay_text.beginDraw();
//  overlay_text.endDraw();
  
//  background(0);

//  jsonSongs=loadJSONArray("data.json");
//  songs=new Song[jsonSongs.size()];

//  for (int i=0; i<songs.length; i++) {
//    songs[i]=new Song(jsonSongs.getJSONObject(i));
//  }
  
//  Arrays.sort(songs);//must sort before album asignment
  
//  //println(songs.length);
//  albums=new ArrayList<Album>();
//  for(int i=0 ; i< songs.length ; i++){
//    if(albums.size()==0 || !songs[i].album.equals(albums.get(albums.size()-1).name)){ //first or current song not in last album
//      albums.add(new Album(songs[i].album, songs[i].iYear, albums.size()-1));
//    }
//    albums.get(albums.size()-1).addSong(songs[i]);
//  }
    
//}
//void draw(){
  
//  //PGraphicsPDF pdf = (PGraphicsPDF) g;
  
//  albums.get(albumNumber).drawSongs();
  
//  if(albumNumber<lastAlbumNumber && albumNumber<albums.size()){
//    save(albums.get(albumNumber).name + "_" + albums.get(albumNumber).year + ".JPEG");
   
//    //pdf.nextPage();  // Tell it to go to the next page 
//    background(0);
//    albumNumber++;
  
//  }else{
  
//   exit();
//  }
 

//}


//public class Album{
  
//  String name;
//  ArrayList<Song> songs;
//  int year;
//  int xCenter;
//  int yCenter;
//  PGraphics displayGraphic;
//  int dimention;
//  int orderNum;
  
//  int curSong=0;
  
//  File folder;
//  File[] listOfFiles; 
  
//  int shiftAlbumTitle=0;
  
//  public Album(String _name , int _year, int _order){
//    setName(_name);
//    setYear(_year);
    
//    orderNum=_order;
    
//    //displayGraphic=createGraphics(dim_album_w, dim_album_h);
//    //displayGraphic.beginDraw();
//    //displayGraphic.background(100);
//    //displayGraphic.endDraw();
    
//    songs=new ArrayList<Song>();
//    setOffset();
//    folder = new File("your/path");
//    listOfFiles = folder.listFiles();
//  }
  
//  public void setName(String _name){
//    name = _name;
//  }
//  public void setYear(int _year){
//    year=_year;
//  }
  
//  public void addSong(Song _song){
//    songs.add(_song);
//  }
//  public void setOffset(){
//    //xCenter=(year-1962)*dimention_year_w;//*this.orderNum;
//    xCenter=0;
//    yCenter=0;
//  }
  
//  public void drawSongs(){
//    ////set angles
//    //for(int i=0; i<this.songs.size();i++){
//    //  songs.get(i).setAngle(i, songs.size()+2);
//    //}
    
//    ////add to PGraphic
//    //for (int i=0; i<songs.size(); i++) {
//    //  songs.get(i).addText(this.displayGraphic);
//    //}
    
//    //image(this.displayGraphic,xCenter,0);
//    curSong--;
//    reDrawSongs();
//  }
  
//  public void reDrawSongs(){
//    int gapSongs=100;
    
//    this.displayGraphic=createGraphics(dim_album_w, dim_album_h);
    
//    this.displayGraphic.beginDraw();
//    this.displayGraphic.textFont(gothicFont);
//    int textSize=60;
//    this.displayGraphic.textSize(textSize);
//    this.displayGraphic.fill(255);
//    this.displayGraphic.textAlign(RIGHT, CENTER);
//    this.displayGraphic.pushMatrix();
//    shiftAlbumTitle= (int)this.displayGraphic.textWidth(this.name);
//    this.displayGraphic.text(this.name, shiftAlbumTitle, height/2-textSize/2);
//    this.displayGraphic.textAlign(CENTER, CENTER);
    
//    this.displayGraphic.textSize(textSize*.7);
//    this.displayGraphic.text(this.year, shiftAlbumTitle/2, height/2+textSize/2);
    
    
    
//    this.displayGraphic.popMatrix();
    
    
    
//    this.displayGraphic.endDraw();
//    //this.displayGraphic.clear();
    
//    //current song playing
//    curSong = songs.size()/2;
//    curSong = (curSong+1)%songs.size();
    
    
//    for(int i=0; i<this.songs.size();i++){
      
//      //songs rotating counter clockwise
//      songs.get(i).songOffest = ((i - curSong)+songs.size()+gapSongs)%(songs.size()+gapSongs);
      
//      songs.get(i).setAngle(songs.get(i).songOffest, (songs.size()+gapSongs));
//    }
    
//    //add to PGraphic
    
    
    
    
//    for (int i=0; i<songs.size(); i++) {
//      //if(songs.get(i).songOffest==0){
//      //  songs.get(i).addText(this.displayGraphic, highlightTextSize);
//      //}else{
//      //  songs.get(i).addText(this.displayGraphic, smallTextSize);
//      //}
//      songs.get(i).addText(this.displayGraphic, smallTextSize, highlightTextSize, shiftAlbumTitle);
//    }
//    image(this.displayGraphic,xCenter,0);
    
//  }
  
  
//}

//public class Song implements Comparable {
//  String album;
//  String lyricsRaw;
//  String lyrics;
//  String lyricsTogether;
//  String infoLyrics;
//  String artist;
//  String numer;
//  String song;
//  String sYear;
//  int iYear;
//  int total=1;
//  float angle;
//  float percent;
//  float textCurve;
//  float textCurveTarget;
//  int shortLyricsLength;
//  int songOffest;
  
//  String[] sentences;
  
//  String[] words;
//  String[] pos;
  

//  color[] colors={#00ceff, #00c7f7, #00c2ef, #00bbe8, #00b4df, #00aed8, #00a9d0, #00a3c9, #009cc1, #0097ba, #0090b2, #008aab, #0084a4, #007e9c, #007895, #00738d, #006d87, #00687f, #006279, #005d72, #00576b};

//  RiString ritaLyrics;
//  public Song (JSONObject _json) {


//    album  = _json.getString ("album");
//    lyricsRaw = _json.getString ("lyrics");
//    lyrics=lyricsRaw.replace("<br>", " ");
//    lyricsTogether=lyrics.replace("\r\n", " ").replace("\r", " ").replace("\n", " ");
    
//    ritaLyrics=new RiString(lyricsTogether);
//    sentences=RiTa.splitSentences(lyricsTogether);
//    words=RiTa.tokenize(lyricsTogether);
//    //pos=RiTa.getPosTags(words);
//    pos=RiTa.getPosTags(lyricsTogether);
    
    
//    artist = _json.getString ("artist");
//    //numer = _json.getString ("numer_get");
//    song = _json.getString ("song");
//    sYear = _json.getString ("year");
//    if (sYear.equals("")) {
//      iYear=-1;
//    } else {
//      iYear= Integer.parseInt(sYear);
//    }
    
//    infoLyrics=song+ " - " + sYear + " - " + lyricsTogether;
//    infoLyrics=lyricsTogether;
    
//    textCurve=0;
//    textCurveTarget=1;
    
//    //angel=2;
    
    
//    if(lyricsTogether.length()>300){
//      shortLyricsLength=300;
//    }else{
//      shortLyricsLength=lyricsTogether.length();
//    }
//  }
//  void setAngle(int _index, int _total){
//    angle = 1.0*_index/_total*2*PI;
//    percent=1.0*_index/_total;
    
//    //println(angle);
//  }
  
  
//  void addText(PGraphics _pgraphic, float _textSize){//no higlight
//    addText(_pgraphic, _textSize, _textSize, 0);
//  }

//  void addText(PGraphics _pgraphic, float _textSizeMain, float _textSizeHighlight, int _shiftX) {
    
    
//    _pgraphic.beginDraw();
//    _pgraphic.pushMatrix();
//    _pgraphic.translate(_shiftX-centerDiam/2, _pgraphic.height/2); //_pgraphic.translate(_pgraphic.width/2, _pgraphic.height/2);
//    _pgraphic.rotate(1.0*angle);
//    _pgraphic.translate(centerDiam, 0);//+sin(angle)*900
//    //println(sin(angle*4)*200);
//    _pgraphic.fill(getColor());
//    _pgraphic.fill(255);
//    _pgraphic.textAlign(LEFT, CENTER);
    
//    //print(RiTa.getPosTagsInline(lyricsTogether));
    
//    for(int i=0;i<words.length-1;i++){
//      float widthWord;
//      //if(words[i].indexOf("blue") != -1){
//      //  println(pos[i].length() +" " + pos[i] + " " + words[i]);
//      //}
      
      
//     if(pos[i].indexOf("jj") == 0 && pos[i+1].indexOf("nn") == 0 && !Character.isUpperCase(words[i+1].charAt(0))){//upper case removes things like new york and new sentences
//        _pgraphic.translate(0,(smallTextSize-highlightTextSize)/4);//shift if up
//        _pgraphic.textSize(_textSizeHighlight);
//        widthWord=_pgraphic.textWidth(words[i] + " " + words[i+1]);
//        _pgraphic.text(words[i]+ " " +words[i+1], 0, 0);
//        i++;
//        _pgraphic.translate(widthWord,0);
//        _pgraphic.translate(0,(smallTextSize-highlightTextSize)/-4);//shift down
//      }else{//maybe should add proper nouns
//        _pgraphic.textSize(_textSizeMain);
//        if(RiTa.isPunctuation(words[i])){// if punctuation go back one space
//          _pgraphic.translate(_pgraphic.textWidth(" ")*-1,0);
//        }
        
//        widthWord=_pgraphic.textWidth(words[i] + " ");//+ " "
//        _pgraphic.text(words[i], 0, 0);
//        _pgraphic.translate(widthWord,0);
//      }
//      //_pgraphic.rotate(random(-1,1)*.01);
      
      
//      //widthWord=_pgraphic.textWidth(words[i]);
//      //_pgraphic.translate(widthWord,0);
//      //_pgraphic.text(words[i], 0, 0);
      
//    }
//    //_pgraphic.text(lyricsTogether, 0, 0); 
//    _pgraphic.popMatrix();
//    _pgraphic.endDraw();
//  }
  
//  void hightlighWord(String _word){
//    textSize(smallTextSize*1);
//        if(lyricsTogether.toLowerCase().indexOf(" "+_word.toLowerCase() + " ")!=-1){
//        overlay_2.beginDraw();
//        //overlay_2.clear();
//        overlay_2.pushMatrix();
        
//        overlay_2.translate(height/2, width/2);
//        overlay_2.rotate(1.0*angle);
//        overlay_2.translate(centerDiam, 0);
        
        
//        overlay_2.fill(getColor());
//        overlay_2.fill(255,0,0);
//        overlay_2.stroke(255,0,0);
        
//        //overlay_2.textAlign(LEFT, CENTER);
        
//        //overlay_2.textSize(smallTextSize);
//        //overlay_2.text(lyricsTogether, 0, 0); 
//        overlay_2.line(0,0,textWidth(lyricsTogether),0);
        
//        overlay_2.popMatrix();
//        overlay_2.endDraw();
//        }
    
//  }
//  float printChar(String _charIn, PGraphics _layer){
//    _layer.text(_charIn, 0, 0); 
//    return  _layer.textWidth(_charIn);
//  }
//  void hightlighEnd(){
//      textSize(smallTextSize*1);
//        overlay_2.beginDraw();
//        overlay_2.pushMatrix();
//        overlay_2.translate(height/2, width/2);
//        overlay_2.rotate(1.0*angle);
//        overlay_2.translate(centerDiam, 0);
//        overlay_2.textSize(smallTextSize*1);
//        overlay_2.fill(0,255,0);
//        overlay_2.stroke(255,0,0,150);
//        overlay_2.strokeWeight(4);
//        overlay_2.text(lyricsTogether, 0, 0);
//        //println(textWidth(lyricsTogether));
//        overlay_2.line(0,0,textWidth(lyricsTogether),0);

        
        
//        overlay_2.fill(getColor());
//        overlay_2.fill(255,0,0);

//        overlay_2.translate(textWidth(lyricsTogether),0);
 
         
//        overlay_2.popMatrix();
//        overlay_2.endDraw();
    
    
       
//    }
 
  
//  void enlargeText(){
    
//    overlay.beginDraw();
//    overlay.clear();
//    overlay.pushMatrix();
    
    
//    overlay.translate(height/2, width/2);
//    overlay.rotate(1.0*angle);
//    overlay.translate(centerDiam, 0);


//    overlay.fill(getColor());
//    overlay.fill(255);
//    //overlay.stroke(255,0,0);
//    //overlay.line(0,0,20,0);

//    overlay.textAlign(LEFT, CENTER);

//    overlay.textSize(largeTextSize);
    
//    if(mousePressed){
//    textCurve+=(textCurveTarget-textCurve)*.005;
//      //println(sentences[0]);
//      for(int i=0;i<sentences.length;i++){ 
        
//        overlay.translate(printChar(sentences[i], overlay),0);
//        overlay.rotate(textCurve);
//      }
//    }else{
//      if(textCurve>.00001){
//        textCurve+=(0-textCurve)*.05;
//        int increment=10;
//        for(int i=0;i<infoLyrics.length()-10;i+=increment){ 
          
//          overlay.translate(printChar(infoLyrics.substring(i,i+increment), overlay),0);
//          overlay.rotate(textCurve);
//        }
//      }else{
//        overlay.text(infoLyrics, 0, 0); 
//      }
//    }
    
    
//    overlay.popMatrix();
//    overlay.endDraw();
//  }
//  String getWordAt(float _distance){
//    float distFromCenter=_distance-centerDiam;
//    if(distFromCenter>0){
//      //float widthString = textWidth(lyricsTogether);
      
      
      
//      textSize(largeTextSize);
      
//      float avrageWidthChar =textWidth(infoLyrics)/infoLyrics.length();
//      //println(avrageWidthChar);
//      //println(distFromCenter);
//      int geussIndex=floor(distFromCenter/avrageWidthChar);
//      float guessLength=textWidth(infoLyrics.substring(0,geussIndex));
//      //println(textWidth(lyricsTogether.substring(0,geussIndex)));
//      //println(geussIndex);
      
//      return getWordAtChar(geussIndex);
//      //if(guessLength>distFromCenter){
//      //  //charAt(index);
        
//      //  //String word=charAt(index);
//      //  return(ritaLyrics.wordAt(geussIndex));
//      //}else{
//      //  return(ritaLyrics.wordAt(geussIndex));
//      //}
     
//    }else{
//      return "no";
//    }
    
    
//  }
//  String getWordAtChar(int _index){
//    String word="";
//    int checkIndex=_index;
//    boolean wordStartFound=false;
//    while(!wordStartFound){
//      if(!isBreak(ritaLyrics.charAt(checkIndex)) && checkIndex>0){
//        checkIndex--;
//      }else{
//        wordStartFound=true;
//      }
//    }
//    //if(isBreak(ritaLyrics.charAt(checkIndex))){
//    boolean wordEnded=false;
//    while(!wordEnded){
//      checkIndex++;
//      if(!isBreak(ritaLyrics.charAt(checkIndex))){
//        word+=ritaLyrics.charAt(checkIndex);
        
//      }else{
//        wordEnded=true;
//      }
//    }
//    return word;
//  }
  
//  int[] getWordIndexs(int _index){
//    //String word="";
//    int checkIndex=_index;
//    int wordStartIndex=-1;
//    int wordEndIndex=-1;
    
    
//    boolean wordStartFound=false;
//    while(!wordStartFound){
//      if(!isBreak(ritaLyrics.charAt(checkIndex)) && checkIndex>0){
//        checkIndex--;
//      }else{
//        wordStartIndex=checkIndex;
//        wordStartFound=true;
//      }
//    }
//    boolean wordEnded=false;
//    while(!wordEnded){
//      checkIndex++;
//      if(isBreak(ritaLyrics.charAt(checkIndex))){
//        wordEndIndex=checkIndex;
//        wordEnded=true;
//      }
//    }
//    int[] startEnd={wordStartIndex,wordEndIndex};
//    return startEnd;
//  }
//  boolean isBreak(String _stringIn){
//    if(_stringIn.equals(" ") || _stringIn.equals(",") || _stringIn.equals(".")){
//      return true;
//    }else{
//      return false;
//    }
//  }
  
//  color getColor() {

//    int colorIndex=floor(map(percent, 0, 1, 0, colors.length));
//    return colors[colorIndex];
//  }

//  public int compareTo(Object _obj) {
//    final int BEFORE = -1;
//    final int EQUAL = 0;
//    final int AFTER = 1;
    
//    if ( this == _obj ) return EQUAL;
    
//    Song thatObj=(Song)_obj;
    
//    if(this.album.equals(thatObj.album)){
//      return EQUAL;
//    }else{
//      if(this.iYear < thatObj.iYear){
//        return BEFORE;
//      }else if(this.iYear > thatObj.iYear){
//        return AFTER;
//      }else{
//        String[] alphabetize = {this.album,thatObj.album};
//        java.util.Arrays.sort(alphabetize);
//        if(alphabetize[0].equals(this.album)) return BEFORE;
//        else return AFTER;
//      }
//    }
//  }
//}

//int getSongAtMouse(){
  
//  float angel=getAngel();
  
//  return floor(map(angel,0,PI*2,0,songs.length));//index of this song
//}
//float getAngel(){
//  int run=mouseX-width/2;
//  int rise=mouseY-height/2;
  
//  float angel;
  
//  if(run<0){
//     angel=PI+atan(1.0*rise/run);
//  }else if(rise<0){
//     angel=PI*2+atan(1.0*rise/run);
//  }else{
//    angel=atan(1.0*rise/run);
//  }
//  return angel;
//}
//float getDistance(){
//  return dist(mouseX,mouseY,width/2,height/2);
//}
//boolean isVowel(String _s){
//  String allVowells="aeiou";
//  return (allVowells.indexOf(_s) != -1);
//}
//void mousePressed() {
//  //String word=songs[getSongAtMouse()].getWordAt(getDistance());
  
//  //overlay_text.beginDraw();
//  //overlay_text.pushMatrix();
//  //overlay_text.clear();
//  //overlay_text.translate(height/2, width/2);
//  //overlay_text.textSize(20);
//  //overlay_text.fill(255);
//  //overlay_text.textAlign(CENTER, CENTER);
  
  
  
  
 
//  //overlay_text.text(word,0,0); 
//  //overlay_text.popMatrix();
//  //overlay_text.endDraw();
//  ////println(word);
  
  
  
//  //overlay_2.beginDraw();
//  //overlay_2.clear();
//  //overlay_2.endDraw();
//  ////if(counter%2==0){
//  //  for(int i=0; i<songs.length;i++){
//  //    //songs[i].hightlighEnd();
//  //    songs[i].hightlighWord(word);
//  //  }
//  ////}
//  ////overlay_2.clear();
//  //counter++;
  
//  //mouse
//  background(0);
    
//  albums.get(1).reDrawSongs();
  

//}
//boolean checkRomoval(Song _song){
//  if(_song.iYear==-1){
//    return true;
//  }else if(_song.iYear>1980){
//    return true;
//  }
//  return false;
//}