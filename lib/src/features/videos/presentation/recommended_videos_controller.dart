import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:youtube_clone_flutter/src/features/videos/data/http_video_repository.dart';
import 'package:youtube_clone_flutter/src/features/videos/data/video_repository.dart';

part 'recommended_videos_controller.g.dart';

final videoRepositoryProvider = Provider<VideoRepository>((ref) {
  // return a concrete implementation of AuthRepository
  return HttpVideoRepository();
});

@riverpod
class RecommendedVideosController extends _$RecommendedVideosController {
  @override
  FutureOr<void> build() {
    // no-op
  }

  Future<void> fetchVideos() async {
    final videoRepository = ref.read(videoRepositoryProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(videoRepository.fetchVideos);
  }
}
