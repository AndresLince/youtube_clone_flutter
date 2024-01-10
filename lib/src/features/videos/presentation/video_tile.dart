import 'package:flutter/material.dart';

class VideoTile extends StatelessWidget {
  final String name;
  final String channelName;
  final String views;
  final String channelImage;
  VideoTile({
    required this.name,
    required this.channelName,
    required this.views,
    required this.channelImage,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 20,
        backgroundImage: NetworkImage(this.channelImage),
      ),
      title: Text(name),
      subtitle: Text('$channelName · $views'),
    );
  }
}
