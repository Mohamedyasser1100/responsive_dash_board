import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Income',
          style: AppStyle.styleSemiBold16,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: ShapeDecoration(
            color: const Color(0xffF1F1F1),
            shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 1,
                  color: Color(0xffF1F1F1),
                ),
                borderRadius: BorderRadius.circular(12)),
          ),
          child: Row(
            children: [
              const Text(
                'Monthly',
                style: AppStyle.styleMeduim16,
              ),
              const SizedBox(
                width: 16,
              ),
              Transform.rotate(
                  angle: -1.57079633,
                  child: const Icon(Icons.arrow_back_ios_new))
            ],
          ),
        ),
      ],
    );
  }
}
