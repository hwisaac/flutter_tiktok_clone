import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:video_player/video_player.dart';

class VideoPreviewScreen extends StatefulWidget {
  final XFile video;
  const VideoPreviewScreen({
    super.key,
    required this.video,
  });
  @override
  State<VideoPreviewScreen> createState() => _VideoPreviewScreenState();
}

class _VideoPreviewScreenState extends State<VideoPreviewScreen> {
  late final VideoPlayerController _videoPlayerController;
  bool _savedVideo = false;

  Future<void> _initVideo() async {
    _videoPlayerController =
        VideoPlayerController.file(File(widget.video.path));

    await _videoPlayerController.initialize();
    await _videoPlayerController.setLooping(true);
    await _videoPlayerController.play();

    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _initVideo();
  }

  @override
  Widget build(BuildContext context) {
    Future<void> _saveToGallery() async {
      if (_savedVideo) return;

      await GallerySaver.saveVideo(widget.video.path,
          albumName: "Tiktok clone!");
      _savedVideo = true;
      setState(() {});
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Preview video"),
        actions: [
          IconButton(
            onPressed: _saveToGallery,
            icon: FaIcon(_savedVideo
                ? FontAwesomeIcons.check
                : FontAwesomeIcons.download),
          )
        ],
      ),
      body: _videoPlayerController.value.isInitialized
          ? VideoPlayer(_videoPlayerController)
          : null,
    );
  }
}
