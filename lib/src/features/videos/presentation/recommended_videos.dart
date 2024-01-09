import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_clone_flutter/src/features/videos/application/video_service.dart';
import 'package:youtube_clone_flutter/src/features/videos/presentation/video_tile.dart';

import '../domain/video.dart';

class RecommendedVideos extends StatefulWidget {
  const RecommendedVideos({super.key});

  @override
  State<RecommendedVideos> createState() => _RecommendedVideosState();
}

class _RecommendedVideosState extends State<RecommendedVideos> {
  @override
  Widget build(BuildContext context) {
    return Consumer<VideoService>(builder: (context, videoService, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          Video video = videoService.getVideo(index);
          return VideoTile(name: video.name);
        },
        itemCount: videoService.videosCount,
      );
    });
  }
}
