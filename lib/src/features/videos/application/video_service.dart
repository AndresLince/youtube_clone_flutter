import 'package:flutter/material.dart';

import '../domain/video.dart';

class VideoService extends ChangeNotifier{
  List<Video> _videos = [
    Video(
      name: 'DevTalles PodCast - 147: Inicio 2024 | ¿Cómo hacer que te pasen cosas buenas?',
      channelName: 'Fernando Herrera',
      channelImage: 'https://yt3.ggpht.com/ytc/AIf8zZRUdgAqLyjIRxhCGaw_4Ln_awajey3DphahM-pQsg=s48-c-k-c0x00ffffff-no-rj',
      views: '2,1 k visualizaciones',
      videoUrl: ''
    ),
    Video(
      name: 'DevTalles PodCast - 146: Fin del 2023 | Comparativa contra ti mismo',
      channelName: 'Fernando Herrera',
      channelImage: 'https://yt3.ggpht.com/ytc/AIf8zZRUdgAqLyjIRxhCGaw_4Ln_awajey3DphahM-pQsg=s48-c-k-c0x00ffffff-no-rj',
      views: '2,3 k visualizaciones',
      videoUrl: ''
    ),
  ];

  int get videosCount {
    return _videos.length;
  }

  Video getVideo(int index) {
    return _videos[index];
  }
}
