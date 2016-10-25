//import rita.*;

//JSONArray jsonSongs;
//Song[] songs;

//int counter=0;

//int centerDiam=30;
//float smallTextSize=.5;
//int largeTextSize=30;


//PGraphics overlay, overlay_2, background;

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
//  background = createGraphics(1000, 1000);
  
//  //init
//  background.beginDraw();
//  background.endDraw();
//  overlay.beginDraw();
//  overlay.endDraw();
//  overlay_2.beginDraw();
//  overlay_2.endDraw();
  
//  background(0);

//  jsonSongs=loadJSONArray("data.json");
//  songs=new Song[jsonSongs.size()];

//  for (int i=0; i<songs.length; i++) {
//    songs[i]=new Song(jsonSongs.getJSONObject(i), i, songs.length);
//  }

//  for (int i=0; i<songs.length; i++) {
//    println(songs[i].song);
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
    
    
//    //for (int index=lyricsTogether.toLowerCase().indexOf(" "+_word.toLowerCase() + " ");index >= 0; index=lyricsTogether.toLowerCase().indexOf(" "+_word.toLowerCase() + " ",  index + 1 ) ) {
//    //   System.out.println(index + " : " + getWordAtChar(index));//////here you will get all the index of  "("
//    //   println("width: " +textWidth(lyricsTogether.substring(0,index)) +"   total width " + textWidth(lyricsTogether) + " index " + index + " length "+ lyricsTogether.length());
       
//    //    overlay_2.beginDraw();
//    //    //overlay_2.clear();
//    //    overlay_2.pushMatrix();
        
//    //    overlay_2.translate(height/2, width/2);
//    //    overlay_2.rotate(1.0*angel);
//    //    overlay_2.translate(centerDiam, 0);
        
        
//    //    overlay_2.fill(getColor());
//    //    overlay_2.fill(255,0,0);
//    //    overlay_2.stroke(255,0,0);
        
//    //    //overlay_2.textAlign(LEFT, CENTER);
        
//    //    //overlay_2.textSize(smallTextSize);
//    //    //overlay_2.text(lyricsTogether, 0, 0); 
//    //    overlay_2.line(0,0,textWidth(lyricsTogether),0);
//    //    overlay_2.popMatrix();
//    //    overlay_2.endDraw();
       
////overlay_2.beginDraw();
// //overlay_2.pushMatrix();
 
// //overlay_2.translate(height/2, width/2);

// //overlay_2.rotate(1.0*angel*2*PI);



// // overlay_2.translate(centerDiam*2,0);
// // overlay_2.textAlign(LEFT, CENTER);

// // overlay_2.textSize(smallTextSize*10);


 
// // //overlay_2.text(getWordAtChar(index),0,0);
// // overlay_2.text(lyricsTogether,0,0);

// // //overlay_2.translate(textWidth(lyricsTogether.substring(0,index))+centerDiam*2,0);
// // //overlay_2.translate(textWidth(lyricsTogether.substring(0,index))+centerDiam*2,0);




// // overlay_2.fill(getColor());
// // overlay_2.fill(255,0,0);
// // //background.stroke(255,0,0);
//// //background.line(0,0,20,0);


//// overlay_2.popMatrix();

 
////overlay_2.endDraw();
       
//    //}
 
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
//        //overlay_2.line(0,0,30,0);
        
        
//        overlay_2.fill(getColor());
//        overlay_2.fill(255,0,0);
//        //overlay.stroke(255,0,0);
//        //overlay.line(0,0,20,0);
//        //overlay_2.ellipse(0,0,5,5);
//        overlay_2.translate(textWidth(lyricsTogether),0);
//        //overlay_2.ellipse(0,0,10,5);
        
//        //overlay_2.textAlign(LEFT, CENTER);
        
//        //overlay_2.textSize(smallTextSize);
         
//        overlay_2.popMatrix();
//        overlay_2.endDraw();
    
//      //overlay_2.beginDraw();
       
      
//      // overlay_2.pushMatrix();
       
//      //overlay_2.translate(height/2, width/2);
      
//      //overlay_2.rotate(1.0*angel);
      
//      //overlay_2.fill(0,0,255);
      
//      //overlay_2.translate(centerDiam*2,0);
      
//      //overlay_2.ellipse(0,0,5,5);
//      //overlay_2.fill(255,0,0);
      
//      //overlay_2.translate(textWidth(lyricsTogether),0);
//      //overlay_2.ellipse(0,0,5,5);
      
      
      
      
//      //overlay_2.fill(getColor(1.0*angel));
      
//      //background.stroke(255,0,0);
//      //background.line(0,0,20,0);
      
//      //overlay_2.textAlign(LEFT, CENTER);
      
//      //overlay_2.textSize(smallTextSize*10);
      
      
       
//      //overlay_2.text(getWordAtChar(index),0,0);
      
      
//      //overlay_2.popMatrix();
        
       
//      // overlay_2.endDraw();
       
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
//    overlay.text(lyricsTogether, 0, 0); 
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

//  int compareTo(Object obj) {//needs to be fixed
//    //this.album="4";


//    //if(this.album.equals((Record) album))

//    //return(total - ((Record) b).total);
//    return(-1);
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
//  println(word);
  
  
  
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