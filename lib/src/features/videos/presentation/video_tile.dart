import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:youtube_clone_flutter/src/features/videos/presentation/remote_video.dart';

import '../domain/video.dart';

class VideoTile extends StatelessWidget {
  final Video video;
  VideoTile({
    required this.video,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () => context.go('/video/${video.id}'),
      child: Column(
        children: [
          RemoteVideo(url: video.videoUrl),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              backgroundImage: NetworkImage(this.video.channelImage),
            ),
            title: Text(video.name),
            subtitle: Text('${video.channelName} · ${video.views}'),
          ),
        ]
      ),
    );
  }
}
