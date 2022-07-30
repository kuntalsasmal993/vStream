import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class videoplayer extends StatefulWidget {
  final String? youtubeURL;

  const videoplayer(this.youtubeURL);

  @override
  State<videoplayer> createState() => _videoplayerState();
}

class _videoplayerState extends State<videoplayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId:
            YoutubePlayerController.convertUrlToId(widget.youtubeURL!)!,
        params: const YoutubePlayerParams(
          loop: false,
          color: 'trasparent',
          desktopMode: false,
          strictRelatedVideos: true,
          showFullscreenButton: !kIsWeb,
          autoPlay: true,
        ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [

          SizedBox(
             height: kIsWeb ? screensize.height/1.13 : screensize.height/2,
            // height: 200,
            width: screensize.width,
            child: YoutubePlayerIFrame(
              controller: _controller,

            ),
          ),
          Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry')
        ],
      ),
    );
  }
}
