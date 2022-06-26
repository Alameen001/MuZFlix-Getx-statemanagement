import 'package:get/get.dart';
import 'package:on_audio_room/on_audio_room.dart';

class favcontoller extends GetxController {

  
  deleteFromFav(OnAudioRoom audioRoom, int key) async {
    await audioRoom.deleteFrom(RoomType.FAVORITES, key);

    update();
  }
  
}
