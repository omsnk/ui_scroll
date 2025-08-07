import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = List.generate(51, (i) => 'Item ${i + 1}');

    return Scaffold(
      appBar: AppBar(title: Text('Chapter 6'), backgroundColor: Colors.blue),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int idx) {
          return Container(
            color: Colors.green[100 + (idx % 8) * 100],
            child: Text(items[idx]),
          );
        },
      ),
    );
  }
}
