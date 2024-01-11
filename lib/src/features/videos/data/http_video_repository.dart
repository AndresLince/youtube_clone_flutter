import 'package:http/http.dart' as http;
import 'package:youtube_clone_flutter/src/features/videos/data/video_repository.dart';
import 'package:youtube_clone_flutter/src/features/videos/domain/video.dart';

class HttpVideoRepository implements VideoRepository {
  HttpVideoRepository({required this.client});
  final http.Client client;

  @override
  Future<List<Video>> fetchVideos(String uid) {
    // TODO: send request, parse response, return Weather object or throw error
    throw UnimplementedError();
  }
}