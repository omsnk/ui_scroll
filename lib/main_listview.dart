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
    List<String> items = List.generate(50, (i) => 'Item ${i + 1}');

    return Scaffold(
      appBar: AppBar(title: Text('Chapter 6'), backgroundColor: Colors.blue),
      body: GridView.count(
        crossAxisCount: 3, // 3 คอลัมน์ ระยะห่างแนวนอน
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        padding: EdgeInsets.all(8.0),
        children: List<Widget>.generate(51, (index) {
          // สร้างไอเท็มตัวอย่าง 20 อัน
          return Container(
            color: Colors.teal[100 + (index % 8) * 100],
            child: Center(child: Text('Item $index')),
          );
        }),
      ),
    );
  }
}
