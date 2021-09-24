import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class GetVideoPlayerController extends GetxController {
  VideoPlayerController videoPlayerController;
  ChewieController chewieController;

  @override
  void onInit() {
    super.onInit();
    initializePlayer();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> initializePlayer() async {
    videoPlayerController = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');

    await Future.wait([videoPlayerController.initialize()]);
    chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        autoPlay: false,
        looping: false,
        materialProgressColors: ChewieProgressColors(
            bufferedColor: Colors.lightGreen,
            backgroundColor: Colors.yellow,
            handleColor: Colors.cyanAccent,
            playedColor: Colors.red),
        placeholder: Container(
          color: Colors.greenAccent,
        ),
        autoInitialize: true);
    update();
  }
}
