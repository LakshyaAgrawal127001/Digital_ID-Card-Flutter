import 'package:flutter/material.dart';
import 'package:digital/screen/Digital_id.dart';

void main() => runApp(const Digitalid());

class Digitalid extends StatefulWidget {
  const Digitalid({super.key});

  @override
  State<Digitalid> createState() => _DigitalidState();
}

class _DigitalidState extends State<Digitalid> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Digital_ID",
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      home: IDcard(),
    );
  }
}
