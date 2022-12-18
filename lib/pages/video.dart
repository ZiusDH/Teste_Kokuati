import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class video extends StatefulWidget {
  const video({super.key});

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {
  final videoURL = https://www.youtube.com/watch?v=79DijItQXMM&ab_channel=DisneyMusicVEVO;
  late YoutubePlayerController _controller;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color(0xFFF2FFF4),
    ));
  }
}
