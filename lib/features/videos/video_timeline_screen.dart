import 'package:flutter/material.dart';

class VideoTimelineScreen extends StatefulWidget {
  const VideoTimelineScreen({super.key});

  @override
  State<VideoTimelineScreen> createState() => _VideoTimelineScreenState();
}

class _VideoTimelineScreenState extends State<VideoTimelineScreen> {
  int _itemCount = 4;
  List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.pink,
    Colors.teal,
    Colors.yellow,
  ];
  void _onPageChanged(int page) {
    if (page == _itemCount - 2) {
      _itemCount = _itemCount + 4;
      colors.addAll([
        Colors.blue,
        Colors.red,
        Colors.pink,
        Colors.teal,
        Colors.yellow,
      ]);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      onPageChanged: _onPageChanged,
      itemCount: _itemCount,
      itemBuilder: (context, index) => Container(
        color: colors[index],
        child: Center(
          child: Text(
            "Screen $index",
            style: const TextStyle(
              fontSize: 68,
            ),
          ),
        ),
      ),
    );
  }
}
