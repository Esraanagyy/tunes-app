import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';

class Model {
  final Color color;
  final String sound;

  Model({required this.color, required this.sound});
  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
