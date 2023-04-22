import 'package:flutter/material.dart';
// import '../main.dart';

class Button extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final label;
  final void Function() selecionado;
  const Button(this.label, this.selecionado, {super.key});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: selecionado,
        child: Text(label)),
    );
    }
}