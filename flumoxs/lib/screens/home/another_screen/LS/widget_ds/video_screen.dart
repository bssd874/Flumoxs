import 'package:flumoxs/screens/home/another_screen/LS/models/data_video.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key, required this.video});
  final String video;

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController controller;

  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer() {
    controller = VideoPlayerController.asset(widget.video);
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((value) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B3A55),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2B3A55),
        title: Text("Detail Product"),
        elevation: 0,
      ),

      body: Center(
        child: controller.value.isInitialized ?
            AspectRatio(aspectRatio: controller.value.aspectRatio,
            child: VideoPlayer(controller),
            )
            :Container(
              height: 200,
              width: double.infinity,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if(controller.value.isPlaying){
              controller.pause();
            }else{
              controller.play();
            }
          });
        },
        child: Icon(
          controller.value.isPlaying ?
          Icons.pause:
          Icons.play_arrow
        ),
      ),
    );
    
    
  }
}