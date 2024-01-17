import 'package:freezed_annotation/freezed_annotation.dart';

part 'video.freezed.dart';
part 'video.g.dart';

@freezed
class Video with _$Video {
  factory Video({
    required String name,
    required String channelName,
    required String channelImage,
    required String views,
    required String videoUrl,
    required String id,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) =>
      _$VideoFromJson(json);
}
