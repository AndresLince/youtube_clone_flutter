import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:youtube_clone_flutter/src/features/videos/presentation/remote_video.dart';

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
    return GestureDetector(
      onLongPress: () => context.go('/video/1'),
      child: Column(
        children: [
          RemoteVideo(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              backgroundImage: NetworkImage(this.channelImage),
            ),
            title: Text(name),
            subtitle: Text('$channelName · $views'),
          ),
        ]
      ),
    );
  }
}
