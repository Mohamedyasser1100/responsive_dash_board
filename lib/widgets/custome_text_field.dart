import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({super.key, required this.hint});

  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:
            AppStyle.styleRegular16(context).copyWith(color: Color(0xffAAAAAA)),
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Color(0xffFAFAFA),
        ));
  }
}
