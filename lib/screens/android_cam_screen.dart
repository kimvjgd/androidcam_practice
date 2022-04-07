import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AndroidCamScreen extends StatefulWidget {
  const AndroidCamScreen({Key? key}) : super(key: key);

  @override
  State<AndroidCamScreen> createState() => _AndroidCamScreenState();
}

class _AndroidCamScreenState extends State<AndroidCamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<Object>(
        stream: streamImage(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Container();
        }
      ),
    );
  }

  Stream<Object> streamImage() async* {
    // Dio
  }
}
