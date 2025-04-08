import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerHandler {
  final AudioPlayer _player = AudioPlayer();
  final String filePath;
  final int durationInSeconds;
  late final VoidCallback onStateChanged;

  bool _isPlaying = false;

  AudioPlayerHandler({
    required this.filePath,
    required this.durationInSeconds,
    required this.onStateChanged,
  });

  bool get isPlaying => _isPlaying; // Getter for the isPlaying status

  void playAudio() async {
    if (_isPlaying) return; // Prevent multiple play calls
    _isPlaying = true;
    onStateChanged(); // Notify the UI

    await _player.play(AssetSource(filePath));
    _player.setVolume(1.0);
    await Future.delayed(Duration(seconds: durationInSeconds), () {
      stopAudio();
    });
  }

  void stopAudio() async {
    if (!_isPlaying) return; // Prevent stopping if not playing

    await _player.stop();
    _isPlaying = false;
    onStateChanged(); // Notify the UI
  }

  void dispose() {
    _player.dispose(); // Clean up resources
  }
}
