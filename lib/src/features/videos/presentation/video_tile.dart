import 'package:flutter/material.dart';

class VideoTile extends StatelessWidget {
  final String name;
  VideoTile({
    required this.name
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
    );
  }
}
