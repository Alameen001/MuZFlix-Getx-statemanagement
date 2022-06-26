

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:get/get.dart';
import 'package:music_application_1/functions/functions.dart';
import 'package:music_application_1/screenhome.dart';
import 'package:music_application_1/screens/musics/mymusic.dart';
import 'package:music_application_1/splash.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

class Homecontroller extends GetxController{

 //-------SPLASH sCREEN or Requst permission--------//


  Future<void>onInit() async{
     gotologin();
     requestPermission();
   
    super.onInit();
  }
 Future<void> gotologin() async {
    await Future.delayed(Duration(seconds:6));
    Get.off(screenhome());
  }

List<SongModel> allSongs = [];
List<Audio> songDetails = [];



   void requestPermission() async {
    Permission.storage.request();
    allSongs = await audioquery.querySongs();
    for (var i in allSongs) {
      songDetails.add(Audio.file(i.uri.toString(),
          metas: Metas(
              title: i.title,
              artist: i.artist,
              id: i.id.toString(),
              album: i.album)));
    }
  }






  //-----BottomNavigation-----////


  var  currentselectedindex =0;

  onSelectedItem(int newindex){

    currentselectedindex = newindex;

    update();
  }
}