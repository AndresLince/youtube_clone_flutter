import 'package:flutter/material.dart';
import 'package:youtube_clone_flutter/src/features/videos/presentation/video_tile.dart';

import '../domain/video.dart';

class VideoList extends StatelessWidget {
  final List<Video> videos;
  const VideoList({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        Video video = videos[index];
        return VideoTile(
          video: video,
        );
      },
      itemCount: videos.length,
    );
  }
}
