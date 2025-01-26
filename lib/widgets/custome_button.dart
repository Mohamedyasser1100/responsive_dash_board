import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton(
      {super.key, this.backGroundColor, required this.title, this.textColor});

  final Color? backGroundColor, textColor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 0,
              backgroundColor: backGroundColor ?? Color(0xff4DB7F2)),
          onPressed: () {},
          child: Text(
            title,
            style: AppStyle.styleSemiBold16.copyWith(color: textColor),
          )),
    );
  }
}
