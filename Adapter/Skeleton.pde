class Skeleton {
  // We just use this class as a structure to store the joint coordinates sent by OSC.
  // The format is {x, y, z}, where x and y are in the [0.0, 1.0] interval, 
  // and z is in the [0.0, 7.0] interval.
  float headCoords[] = new float[3];
  float neckCoords[] = new float[3];
  float rShoulderCoords[] = new float[3];
  float rElbowCoords[] = new float[3];
  float rHandCoords[] = new float[3];
  float lShoulderCoords[] = new float[3];
  float lElbowCoords[] = new float[3];    
  float lHandCoords[] = new float[3];   
  float torsoCoords[] = new float[3];
  float rHipCoords[] = new float[3];
  float rKneeCoords[] = new float[3];   
  float rFootCoords[] = new float[3];
  float lHipCoords[] = new float[3];
  float lKneeCoords[] = new float[3];  
  float lFootCoords[] = new float[3];
  float[] allCoords[] = {headCoords, neckCoords, rShoulderCoords, rElbowCoords,
                       rHandCoords, lShoulderCoords, lElbowCoords,
                       lHandCoords, torsoCoords, rHipCoords, /*rKneeCoords,
                       rFootCoords,*/ lHipCoords, /*lKneeCoords, lFootCoords*/};
                       
  int headConf;
  int neckConf;
  int rShoulderConf;
  int rElbowConf;
  int rHandConf;
  int lShoulderConf;
  int lElbowConf;    
  int lHandConf;   
  int torsoConf;
  int rHipConf;
  int rKneeConf;   
  int rFootConf;
  int lHipConf;
  int lKneeConf;  
  int lFootConf;
                      
  int id; //here we store the skeleton's ID as assigned by OpenNI and sent through OSC.
  float colors[] = {255, 255, 255};// The color of this skeleton

  Skeleton(int id) {
    this.id = id;
    colors[0] = random(128, 255);
    colors[1] = random(128, 255);
    colors[2] = random(128, 255);
  }
}
