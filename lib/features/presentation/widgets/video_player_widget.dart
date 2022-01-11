import 'package:amplified_todo/features/data/services/storage.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String videoKey;

  const VideoPlayerWidget({
    Key? key,
    required this.videoKey,
  }) : super(key: key);

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  VideoPlayerController? _controller;
  bool _isPlaying = true;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    final url = await StorageService().getUrl(widget.videoKey);
    _controller = VideoPlayerController.network(url);
    await _controller?.initialize();
    await _controller?.setLooping(true);
    setState(() {});
    _addListener();
  }

  _addListener() {
    _controller?.addListener(() {
      setState(() {
        _isPlaying = _controller!.value.isPlaying;
      });
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    _controller = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_controller != null && (_controller?.value.isInitialized ?? true)) {
      return InkWell(
        onTap: () async {
          _controller!.value.isPlaying
              ? await _controller!.pause()
              : await _controller!.play();
          setState(() {});
        },
        child: Stack(
          children: <Widget>[
            VisibilityDetector(
              key: Key(widget.videoKey),
              onVisibilityChanged: (VisibilityInfo info) {
                if (info.visibleFraction == 0) {
                  _controller?.pause();
                } else {
                  _controller?.play();
                }
              },
              child: Center(
                child: AspectRatio(
                  aspectRatio: _controller!.value.aspectRatio,
                  child: VideoPlayer(_controller!),
                ),
              ),
            ),
            _isPlaying
                ? const SizedBox()
                : Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.4),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Icon(Icons.play_arrow, size: 95),
                    ),
                  )
          ],
        ),
      );
    }
    return const Center(child: CircularProgressIndicator());
  }
}
