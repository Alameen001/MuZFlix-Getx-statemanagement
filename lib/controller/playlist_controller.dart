import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_application_1/functions/functions.dart';
import 'package:music_application_1/screens/playlist/playlist.dart';
import 'package:on_audio_room/on_audio_room.dart';

class PlaylistController extends GetxController {
////-----CreatePlaylist-----///
  playlistAdd(context, OnAudioRoom audioRoom) {
    createPlaylistFrom(context, () {
      update();
    }, audioRoom);
  }

  ///----DeletePlaylist-----////

  Future<dynamic> deletePlaylist(BuildContext context, OnAudioRoom audioRoom,
      AsyncSnapshot<List<PlaylistEntity>> songs, int index) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text('Do you really want to delete?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('NO'),
          ),
          TextButton(
              onPressed: () {
                audioRoom.deletePlaylist(songs.data![index].key);
                Navigator.pop(context);
                update();
              },
              child: const Text('YES')),
        ],
      ),
    );
  }

  ////-----RenamePlaylist-----/////

  editeRename(OnAudioRoom onAudioRoom, int key, String newname) {
    onAudioRoom.renamePlaylist(key, newname);
    update();
  }

  ///---Playlist info Delete songs-----///

  PlaylistDelete(int entekey, int playlistkey) {
    audioRoom.deleteFrom(RoomType.PLAYLIST, entekey,
        playlistKey: playlistkey);
        update();
  }
}
