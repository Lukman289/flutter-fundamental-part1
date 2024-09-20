import 'package:flutter/material.dart';
import 'package:hello_world/basic_widgets/alert_widget.dart';
import 'package:hello_world/basic_widgets/datePicker_widget.dart';
import 'package:hello_world/basic_widgets/image_widget.dart';
import 'package:hello_world/basic_widgets/input_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Tugas Praktikum',
      home: MyHomePage(title: 'Tugas Praktikum'),
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
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          children: <Widget>[
            MyImageWidget(),
            MyAllertWidget(),
            MyInpudWidget(),
            MyDatePicker(title: 'Pilih Tanggal')
          ],
        ),
      ),
    );
  }
}
