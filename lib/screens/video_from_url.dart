import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoFromUrl extends StatefulWidget {
  const VideoFromUrl({Key? key}) : super(key: key);

  @override
  State<VideoFromUrl> createState() => _VideoFromUrlState();
}

class _VideoFromUrlState extends State<VideoFromUrl> {
  String dataSource = 'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4';
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(dataSource)
      ..initialize().then((_) {
        setState(() {

        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _controller!.value.isInitialized ? AspectRatio(
            aspectRatio: _controller!.value.aspectRatio,
            child: VideoPlayer(_controller!),):Container(color: Colors.red, height: 300,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous)),
              IconButton(onPressed: (){
                _controller!.value.isPlaying?_controller!.pause():_controller!.play();
              }, icon: Icon(Icons.play_arrow)),
              IconButton(onPressed: (){}, icon: Icon(Icons.skip_next)),
            ],
          )
        ],
      ),
    );
  }

  Stream<Object> streamImage() async* {
    // Dio

  }
}
