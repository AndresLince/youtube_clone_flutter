import 'package:flutter/material.dart';

class VideoTile extends StatelessWidget {
  final String name;
  final String channelName;
  final String views;
  VideoTile({
    required this.name,
    required this.channelName,
    required this.views,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text('$channelName · $views'),
    );
  }
}
