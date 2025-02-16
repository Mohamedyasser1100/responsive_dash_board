import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyle.styleSemiBold16(context),
        ),
        Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration:
              ShapeDecoration(shape: OvalBorder(), color: Color(0xffFAFAFA)),
          child: Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}
