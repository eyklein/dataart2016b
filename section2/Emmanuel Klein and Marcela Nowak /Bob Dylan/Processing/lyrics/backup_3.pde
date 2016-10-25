//import rita.*;
//import java.util.*;

//JSONArray jsonSongs;
//Song[] songs;

//int counter=0;

//int centerDiam=30;
//float smallTextSize=.5;
//int largeTextSize=10;


//PGraphics overlay, overlay_2, overlay_text, background;

////eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ;


////camera stuff not working with canvase
////float eyeX=width/2.0;
////float eyeY = height/2.0;
////float eyeZ =(height/2.0) / tan(PI*60.0 / 360.0);
////float centerX =width/2.0;
////float centerY = height/2.0;
////float centerZ =0;
////float upX = 0;
////float upY = 1;
////float upZ = 0;

////float eyeXDefalt=width/2.0;
////float eyeYDefalt = height/2.0;
////float eyeZDefalt =(height/2.0) / tan(PI*60.0 / 360.0);
////float centerXDefalt =width/2.0;
////float centerYDefalt = height/2.0;
////float centerZDefalt =0;
////float upXDefalt = 0;
////float upYDefalt = 1;
////float upZDefalt = 0;

//// width/2.0, height/2.0, (height/2.0) / tan(PI*60.0 / 360.0), width/2.0, height/2.0, 0, 0, 1, 0

//void setup() {
//  size(1000, 1000);
//  overlay = createGraphics(1000, 1000);
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
//    songs[i]=new Song(jsonSongs.getJSONObject(i), i, songs.length);
//  }
//  Arrays.sort(songs);

//  for (int i=0; i<songs.length; i++) {
//    println(songs[i].song + "   :    "+ songs[i].sYear);
//    songs[i].addText();
//  }
//}

////public class AllSongs{
////  public AllSongs
  
////}

//public class Song implements Comparable {
//  String album;
//  String lyricsRaw;
//  String lyrics;
//  String lyricsTogether;
//  String artist;
//  String numer;
//  String song;
//  String sYear;
//  int iYear;
//  int total=1;
//  float angel;
//  float percent;
//  float textCurve;
//  float textCurveTarget;
//  int shortLyricsLength;

//  color[] colors={#00ceff, #00c7f7, #00c2ef, #00bbe8, #00b4df, #00aed8, #00a9d0, #00a3c9, #009cc1, #0097ba, #0090b2, #008aab, #0084a4, #007e9c, #007895, #00738d, #006d87, #00687f, #006279, #005d72, #00576b};

//  RiString ritaLyrics;
//  public Song (JSONObject _json, int _index, int _total) {


//    album  = _json.getString ("album");
//    lyricsRaw = _json.getString ("lyrics");
//    lyrics=lyricsRaw.replace("<br>", "");
//    lyricsTogether=lyrics.replace("\r", "").replace("\n", " ");
//    ritaLyrics=new RiString(lyricsTogether);
//    artist = _json.getString ("artist");
//    //numer = _json.getString ("numer_get");
//    song = _json.getString ("song");
//    sYear = _json.getString ("year");
//    if (sYear.equals("")) {
//      iYear=-1;
//    } else {
//      iYear= Integer.parseInt(sYear);
//    }
//    angel = 1.0*_index/_total*2*PI;
//    percent=1.0*_index/_total;
//    textCurve=0;
//    textCurveTarget=1;
//    if(lyricsTogether.length()>300){
//      shortLyricsLength=300;
//    }else{
//      shortLyricsLength=lyricsTogether.length();
//    }
//  }
  
  
  

//  void addText() {
//    background.beginDraw();
//    background.pushMatrix();
//    background.translate(height/2, width/2);

//    background.rotate(1.0*angel);
//    background.translate(centerDiam, 0);


//    background.fill(getColor());
//    background.fill(255);
//    //background.stroke(255,0,0);
//    //background.line(0,0,20,0);

//    background.textAlign(LEFT, CENTER);

//    background.textSize(smallTextSize);
//    //for(int i=0;i<lyricsTogether.length();i++){   
//    //  background.translate(printChar(ritaLyrics.charAt(i), background),0);
      
      
//    //  background.rotate(1.0*lyricsTogether.length()*0.0000003);
//    //  //if(ritaLyrics.charAt(i).equals("a") || ritaLyrics.charAt(i).equals("e") || ritaLyrics.charAt(i).equals("i") || ritaLyrics.charAt(i).equals("o") || ritaLyrics.charAt(i).equals("u")){
//    //  //  background.rotate(.003);
        
//    //  //}else{
//    //  //  background.rotate(-.001);
//    //  //}
//    //}
    
//    background.text(lyricsTogether, 0, 0); 
//    background.popMatrix();
//    background.endDraw();
//  }
//  void hightlighWord(String _word){
//    textSize(smallTextSize*1);
//        if(lyricsTogether.toLowerCase().indexOf(" "+_word.toLowerCase() + " ")!=-1){
//        overlay_2.beginDraw();
//        //overlay_2.clear();
//        overlay_2.pushMatrix();
        
//        overlay_2.translate(height/2, width/2);
//        overlay_2.rotate(1.0*angel);
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
//    //_layer.line(0,0,textWidth(_charIn),0);
//    return  _layer.textWidth(_charIn);
//  }
//  void hightlighEnd(){
//      textSize(smallTextSize*1);
//        overlay_2.beginDraw();
//        overlay_2.pushMatrix();
//        overlay_2.translate(height/2, width/2);
//        overlay_2.rotate(1.0*angel);
//        overlay_2.translate(centerDiam, 0);
//        overlay_2.textSize(smallTextSize*1);
//        overlay_2.fill(0,255,0);
//        overlay_2.stroke(255,0,0,150);
//        overlay_2.strokeWeight(4);
//        overlay_2.text(lyricsTogether, 0, 0);
//        println(textWidth(lyricsTogether));
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
//    overlay.rotate(1.0*angel);
//    overlay.translate(centerDiam, 0);


//    overlay.fill(getColor());
//    overlay.fill(255);
//    //overlay.stroke(255,0,0);
//    //overlay.line(0,0,20,0);

//    overlay.textAlign(LEFT, CENTER);

//    overlay.textSize(largeTextSize);
    
//    if(mousePressed){
//    textCurve+=(textCurveTarget-textCurve)*.005;
//    int increment=10;
//      for(int i=0;i<lyricsTogether.length()-10;i+=increment){ 
        
//        overlay.translate(printChar(lyricsTogether.substring(i,i+increment), overlay),0);
//        overlay.rotate(textCurve);
//      }
//    }else{
//      if(textCurve>.00001){
//        textCurve+=(0-textCurve)*.05;
//        int increment=10;
//        for(int i=0;i<lyricsTogether.length()-10;i+=increment){ 
          
//          overlay.translate(printChar(lyricsTogether.substring(i,i+increment), overlay),0);
//          overlay.rotate(textCurve);
//        }
//      }else{
//        overlay.text(lyricsTogether, 0, 0); 
//      }
//    }
    
    
//    overlay.popMatrix();
//    overlay.endDraw();
//  }
//  String getWordAt(float _distance){
//    float distFromCenter=_distance-centerDiam*2;
//    if(distFromCenter>0){
//      //float widthString = textWidth(lyricsTogether);
      
      
      
//      textSize(largeTextSize);
      
//      float avrageWidthChar =textWidth(lyricsTogether)/lyricsTogether.length();
//      println(avrageWidthChar);
//      println(distFromCenter);
//      int geussIndex=floor(distFromCenter/avrageWidthChar);
//      float guessLength=textWidth(lyricsTogether.substring(0,geussIndex));
//      println(textWidth(lyricsTogether.substring(0,geussIndex)));
//      println(geussIndex);
      
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
//        Arrays.sort(alphabetize);
//        if(alphabetize[0].equals(this.album)) return BEFORE;
//        else return AFTER;
//      }
//    }
//  }
//}
//void draw(){
//  //overlay.songs[getSongAtMouse()].song
//   //println(songs[getSongAtMouse()].song);
//   songs[getSongAtMouse()].enlargeText();
//   background(0);
//   image(background,0,0);
   
//   image(overlay_2,0,0);
//  image(overlay,0,0);
//  image(overlay_text,0,0);
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
//void mousePressed() {
//  String word=songs[getSongAtMouse()].getWordAt(getDistance());
  
//  overlay_text.beginDraw();
//  overlay_text.pushMatrix();
//  overlay_text.clear();
//  overlay_text.translate(height/2, width/2);
//  overlay_text.textSize(20);
//  overlay_text.fill(255);
//  overlay_text.textAlign(CENTER, CENTER);
  
  
  
  
 
//  overlay_text.text(word,0,0); 
//  overlay_text.popMatrix();
//  overlay_text.endDraw();
//  //println(word);
  
  
  
//  overlay_2.beginDraw();
//  overlay_2.clear();
//  overlay_2.endDraw();
//  //if(counter%2==0){
//    for(int i=0; i<songs.length;i++){
//      //songs[i].hightlighEnd();
//      songs[i].hightlighWord(word);
//    }
//  //}
//  //overlay_2.clear();
//  counter++;

//}