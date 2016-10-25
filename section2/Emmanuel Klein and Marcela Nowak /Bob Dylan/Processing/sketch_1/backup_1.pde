//import rita.*;

//JSONArray jsonSongs;
//Song[] songs;

//int centerDiam=30;

//PGraphics overlay, background;

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
//  size(1000, 1000, P3D);
//  overlay = createGraphics(1000, 1000);
//  background = createGraphics(1000, 1000);
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

//  color[] colors={#00ceff, #00c7f7, #00c2ef, #00bbe8, #00b4df, #00aed8, #00a9d0, #00a3c9, #009cc1, #0097ba, #0090b2, #008aab, #0084a4, #007e9c, #007895, #00738d, #006d87, #00687f, #006279, #005d72, #00576b};


//  public Song (JSONObject _json, int _index, int _total) {


//    album  = _json.getString ("album");
//    lyricsRaw = _json.getString ("lyrics");
//    lyrics=lyricsRaw.replace("<br>", "");
//    lyricsTogether=lyrics.replace("\r", "").replace("\n", "");
//    artist = _json.getString ("artist");
//    //numer = _json.getString ("numer_get");
//    song = _json.getString ("song");
//    sYear = _json.getString ("year");
//    if (sYear.equals("")) {
//      iYear=-1;
//    } else {
//      iYear= Integer.parseInt(sYear);
//    }
    
//    angel = 1.0*_index/_total;
//  }

//  void addText() {
//    background.beginDraw();
//    background.pushMatrix();
//    background.translate(height/2, width/2);

//    background.rotate(1.0*angel*2*PI);
//    background.translate(centerDiam, 0);


//    background.fill(getColor(1.0*angel));
//    background.fill(255);
//    background.stroke(255,0,0);
//    //background.line(0,0,20,0);

//    background.textAlign(LEFT, CENTER);

//    background.textSize(3);
//    background.text(lyricsTogether, centerDiam, 0); 
//    background.popMatrix();
//    background.endDraw();
//  }
//  void enlargeText(){
    
//    overlay.beginDraw();
//    overlay.clear();
//    overlay.pushMatrix();
//    overlay.translate(height/2, width/2);

//    overlay.rotate(1.0*angel*2*PI);
//    overlay.translate(centerDiam, 0);


//    overlay.fill(getColor(1.0*angel));
//    overlay.fill(255);
//    overlay.stroke(255,0,0);
//    //overlay.line(0,0,20,0);

//    overlay.textAlign(LEFT, CENTER);

//    overlay.textSize(20);
//    overlay.text(lyricsTogether, centerDiam, 0); 
//    overlay.popMatrix();
//    overlay.endDraw();
//  }
//  color getColor(float _percent) {

//    int colorIndex=floor(map(_percent, 0, 1, 0, colors.length));
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
//   println(songs[getSongAtMouse()].song);
//   songs[getSongAtMouse()].enlargeText();
//   background(0);
//   image(background,0,0);
//   image(overlay,0,0);
  
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
//void mousePressed() {
  
  
//}