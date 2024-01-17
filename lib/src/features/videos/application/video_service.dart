import 'package:flutter/material.dart';

import '../domain/video.dart';

class VideoService extends ChangeNotifier{
  List<Video> _videos = [];

  int get videosCount {
    return _videos.length;
  }

  Video getVideo(int index) {
    return _videos[index];
  }
}
