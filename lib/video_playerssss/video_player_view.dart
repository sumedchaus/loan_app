import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app/video_playerssss/video_player_controller.dart';

class VideoPlayerView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
      ),
      body: Container(
        child: Column(
          children: [
            GetBuilder<GetVideoPlayerController>(
              init: GetVideoPlayerController(),
              builder: (controller) =>
                  Expanded(child: Center(
                    child: controller.chewieController != null &&
                        controller.chewieController.videoPlayerController.value
                            .isInitialized?
                    Chewie(controller :controller.chewieController):
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(height: 10,),
                        Text(
                            "Loading"
                        )
                      ],
                    ),
                  )),

            )
          ],
        ),
      ),
    );
  }
}
