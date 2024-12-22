import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          const Text(
            'Monthly',
            style: AppStyle.styleMeduim16,
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
              angle: -1.57079633,
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Color(0xff064060),
              ))
        ],
      ),
    );
  }
}
