class VolumeConverter {

  double mili,gallon,litr;

  double convertLitrToMiliLitr(int volume) {
    return mili = (volume * 1000).toDouble();
  }

  double convertLitrToGallon(int volume) {
    return gallon = volume * 0.264172052358148;
  }

  double convertGallonToLitr(int volume) {
    return litr = volume * 3.7854;
  }
}