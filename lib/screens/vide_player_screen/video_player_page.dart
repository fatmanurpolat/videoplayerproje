import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideo extends StatefulWidget {
  final String videoId; // YouTube video ID'si

  YoutubeVideo(this.videoId);

  @override
  _YoutubeVideoState createState() => _YoutubeVideoState();
}
class _YoutubeVideoState extends State<YoutubeVideo> {
  late YoutubePlayerController _controller;
  bool isReady = false; // Videonun hazır olup olmadığını takip etmek için 

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: YoutubePlayerFlags(
        autoPlay: false,
      ),
    );

    _controller.addListener(() {
      if (_controller.value.isReady) {
        setState(() {
          isReady = true; // Videonun hazır olduğunu belirtir
          _controller.play();
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Oynatıcı"),
      ),
      body: Center(
        child: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
        ),
      ),
    );
  }
}
