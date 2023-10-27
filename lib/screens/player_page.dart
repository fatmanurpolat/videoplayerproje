import 'package:flutter/material.dart';

class YouTubePlayerPage extends StatelessWidget {
  final String youtubeLink;

  YouTubePlayerPage(this.youtubeLink);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("YouTube Video"),
      ),
      body: Center(
        // YouTube oynatıcıyı buraya ekleyebilirsiniz
        child: Text('Oynatıcı buraya gelecek: $youtubeLink'),
      ),
    );
  }
}
