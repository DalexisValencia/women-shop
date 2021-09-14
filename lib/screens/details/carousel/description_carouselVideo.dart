import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:women_shop/models/productsModel.dart';
import 'package:women_shop/styles/detailsText.dart';

class DescriptionCarouselVideo extends StatefulWidget {
  final ProductGallery item;
  const DescriptionCarouselVideo({Key key, this.item}) : super(key: key);

  @override
  _DescriptionCarouselVideoState createState() =>
      _DescriptionCarouselVideoState();
}

class _DescriptionCarouselVideoState extends State<DescriptionCarouselVideo>
    with SingleTickerProviderStateMixin {
  VideoPlayerController _controller;
  AnimationController _animationController;
  bool isPlaying = false;
  Duration compareDurationZero = Duration(
    hours: 0,
    minutes: 0,
    seconds: 0,
    milliseconds: 0,
  );

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      widget.item.url,
      // 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    )
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          isPlaying = false;
        });
      })
      ..addListener(() {
        // false when the time current and time total are in the zero position and isn't playing
        if (_controller.value.position == compareDurationZero &&
            !_controller.value.isPlaying) {
          playing(false);
        }
        // false when the time current and total duration are the same and ins't playing
        if (_controller.value.position == _controller.value.duration &&
            !_controller.value.isPlaying) {
          playing(false);
        }

        //change state playing when is playing and state 'isplaying' is false (once) ex: play
        if (_controller.value.isPlaying && !isPlaying) {
          playing(true);
        }
        //change state playing when is playing and state 'isplaying' is true (once) ex: pause
        if (!_controller.value.isPlaying && isPlaying) {
          playing(false);
        }
      });
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
  }

  void playing(bool isplaying) {
    setState(() {
      isPlaying = isplaying;
    });
    isPlaying ? _animationController.forward() : _animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: Stack(
        children: [
          Container(
            color: Colors.black,
            child: !_controller.value.isPlaying &&
                    (_controller.value.position == compareDurationZero)
                ? Container(
                    decoration: BoxDecoration(
                      // image: DecorationImage(
                      //   image: AssetImage(""),
                      // ),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text(
                        'Preview Image',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                : _controller.value.isInitialized
                    ? VideoApp(
                        playercontroller: _controller,
                      )
                    : Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
          ),
          Positioned(
            bottom: 5,
            right: 15,
            child: Visibility(
              visible: true,
              child: MaterialButton(
                padding: EdgeInsets.symmetric(
                  horizontal: !isPlaying ? 10 : 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 3,
                      ),
                      child: Text(
                        !isPlaying ? "Play" : "Pause",
                        style: DetailsTextStyles.playAndPause(context),
                      ),
                    ),
                    SizedBox(width: 5),
                    AnimatedIcon(
                      icon: AnimatedIcons.play_pause,
                      progress: _animationController,
                      color: Colors.white,
                      size: 18,
                    )
                  ],
                ),
                onPressed: () {
                  _controller.value.isPlaying
                      ? _controller.pause()
                      : _controller.play();
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

class VideoApp extends StatefulWidget {
  final VideoPlayerController playercontroller;
  VideoApp({Key key, this.playercontroller}) : super(key: key);
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AspectRatio(
        aspectRatio: widget.playercontroller.value.aspectRatio,
        child: VideoPlayer(widget.playercontroller),
      ),
    );
  }
}
