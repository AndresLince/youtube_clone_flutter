import '../domain/video.dart';

abstract class VideoRepository {
  Future<List<Video>> fetchVideos(String uid);
}
