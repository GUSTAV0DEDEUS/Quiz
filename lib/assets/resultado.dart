import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'Parabéns!',
      style: TextStyle(fontSize: 28),
    ));
  }
}
