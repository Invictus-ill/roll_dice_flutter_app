import 'package:flutter/material.dart';
import 'package:flutter_project_structure_analysis/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(body: GradientContainer(Colors.blue, Colors.purple)),
    ),
  );
}
