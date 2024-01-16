import 'package:flutter/material.dart';
import 'package:youtube_clone_flutter/src/config/constants/environment.dart';
import 'package:youtube_clone_flutter/src/features/videos/presentation/recommended_videos.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:youtube_clone_flutter/src/routing/router.dart';

Future main() async {
  await Environment.initEnvironment();

  runApp(const ProviderScope( child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: RecommendedVideos(),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
