import 'package:go_router/go_router.dart';
import 'package:youtube_clone_flutter/src/features/videos/presentation/recommended_videos.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => RecommendedVideos(),
    ),
  ],
);
