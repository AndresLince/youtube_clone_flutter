import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_clone_flutter/src/features/videos/presentation/remote_video.dart';

class VideoDetailsScreen extends ConsumerStatefulWidget {
  final String videoId;
  const VideoDetailsScreen({super.key, required this.videoId});

  @override
  ConsumerState<VideoDetailsScreen> createState() => _VideoDetailsScreenState();
}

class _VideoDetailsScreenState extends ConsumerState<VideoDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RemoteVideo(url: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'),
          ListTile(
            title: Text('DevTalles PodCast - 147: Inicio 2024 | ¿Cómo hacer que te pasen cosas buenas?'),
            subtitle: Text('505 k vistas hace 2 días Raquel de la morena'),
          ),
        ],
      ),
    );
  }
}

