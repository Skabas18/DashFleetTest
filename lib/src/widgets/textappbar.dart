import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextAppbar extends StatelessWidget {
  String texto;

  TextAppbar(this.texto, {super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
        child: Center(
      child: Text(
        texto,
        style: const TextStyle(fontSize: 30),
      ),
    ));
  }
}
