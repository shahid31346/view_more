import 'package:flutter/material.dart';
import 'package:view_more/view_more.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ViewMore Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DemoApp(),
    );
  }
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text(
            'View More Demo',
            style: TextStyle(color: Colors.white),
          )),
      body: DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 16.0,
          //fontFamily: 'monospace',
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              Padding(
                key: const Key('viewMore'),
                padding: const EdgeInsets.all(16.0),
                child: ViewMore(
                  'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                  trimLines: 2,
                  preDataText: "Lorem Ipsum".toUpperCase(),
                  preDataTextStyle:
                      const TextStyle(fontWeight: FontWeight.w500),
                  style: const TextStyle(color: Colors.black),
                  colorClickableText: Colors.pink,
                  trimMode: Trimer.line,
                  trimCollapsedText: '...view more',
                  trimExpandedText: ' view less',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ViewMore(
                  'Flutter(https://flutter.dev/) has its own UI components, along with an engine to render them on both the Android and iOS platforms. Most of those UI components, right out of the box, conform to the guidelines of Material Design.',
                  trimLines: 3,
                  style: const TextStyle(color: Colors.black),
                  colorClickableText: Colors.pink,
                  trimMode: Trimer.line,
                  trimCollapsedText: '...Expand',
                  trimExpandedText: ' Collapse ',
                  onLinkPressed: (url) {
                    print(url);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
