import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:youtube_clone_flutter/src/features/videos/data/video_repository.dart';
import 'package:youtube_clone_flutter/src/features/videos/domain/video.dart';

class HttpVideoRepository implements VideoRepository {
  HttpVideoRepository();

  @override
  Future<List<Video>> fetchVideos() async {
    final uri = Uri.parse('http://192.168.20.4:3000/video');
    List<Video> _videos = [];
    try{
      http.Response response = await http.get(uri);
      if (response.statusCode == 200) {
        String data = response.body;
        return jsonDecode(data);
      }
    }catch(ex) {
      throw Exception(ex);
    }
    return _videos;
  }
}
