import 'package:flutter/material.dart';
import 'package:flutter_project_structure_analysis/styled_text.dart';

const startAlignment = AlignmentGeometry.topLeft;
const endAlignment = AlignmentGeometry.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.start, this.end, {super.key});

  final Color start;
  final Color end;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [start, end],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(child: StyledText("Hello World !")),
    );
  }
}
