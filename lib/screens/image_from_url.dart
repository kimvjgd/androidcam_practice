import 'package:dio/dio.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mjpeg/flutter_mjpeg.dart';

class ImageFromUrl extends StatefulWidget {
  const ImageFromUrl({Key? key}) : super(key: key);

  @override
  State<ImageFromUrl> createState() => _ImageFromUrlState();
}

class _ImageFromUrlState extends State<ImageFromUrl> {

  // String dataSource = 'http://127.0.0.1:8000/mjpeg/snapshot/';
  String dataSource = 'http://127.0.0.1:8000/mjpeg/stream/';
  // String dataSample = 'https://picsum.photos/536/354';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Mjpeg(

          isLive: true,
            error: (context, error, stack) {
              print(error);
              print(stack);
              return Text(error.toString(), style: TextStyle(color: Colors.red));
            },
            stream: 'http://172.30.1.59:8000/mjpeg/stream/'),
      ),
    );
  }
}
