import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custome_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPageIndex});

  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CustomeDotIndicator(isActive: index == currentPageIndex),
        ),
      ),
    );
  }
}
