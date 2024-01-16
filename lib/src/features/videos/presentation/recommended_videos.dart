import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_clone_flutter/src/features/videos/data/video_provider.dart';
import 'package:youtube_clone_flutter/src/features/videos/presentation/video_list.dart';
import '../domain/video.dart';

class RecommendedVideos extends ConsumerWidget {
  const RecommendedVideos({super.key});

  @override
  // Notice how "build" now receives an extra parameter: "ref"
  Widget build(BuildContext context, WidgetRef ref) {
    // We can use "ref.watch" inside our widget like we did using "Consumer"
    final AsyncValue<List<Video>> videos = ref.watch(videoProvider);

    // The rendering logic stays the same
    return Scaffold(
      body: Center(
        /// Since network-requests are asynchronous and can fail, we need to
        /// handle both error and loading states. We can use pattern matching for this.
        /// We could alternatively use `if (activity.isLoading) { ... } else if (...)`
        child: switch (videos) {
          AsyncData(:final value) => VideoList(videos: value),
          AsyncError() => const Text('Oops, something unexpected happened'),
          _ => const CircularProgressIndicator(),
        },
      ),
    );
  }
}
