import 'package:go_router/go_router.dart';
import 'package:youtube_clone_flutter/src/features/videos/presentation/recommended_videos.dart';
import 'package:youtube_clone_flutter/src/features/videos/presentation/video_details_screen.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => RecommendedVideos(),
    ),
    GoRoute(
      path: '/video/:id',
      builder: (context, state) => VideoDetailsScreen(
        videoId: state.pathParameters['id'] ?? 'no-id',
      ),
    ),
  ],
);
