
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../domain/video.dart';

// Necessary for code-generation to work
part 'video_provider.g.dart';

/// This will create a provider named `videoProvider`
/// which will cache the result of this function.
@riverpod
Future<List<Video>> video(VideoRef ref) async {
  final response = await http.get(Uri.https('copservir-backend-0aaa082390e6.herokuapp.com','/video'));

  List<Video> videos = [];

  try{
    var tagsJson = jsonDecode(response.body);

    for(final currentElement in tagsJson){
      Video currentVideo = Video.fromJson(currentElement);
      videos.add(currentVideo);
    }
  }catch(ex){
    print(ex.toString());
    throw ex;
  }

  return videos;
}