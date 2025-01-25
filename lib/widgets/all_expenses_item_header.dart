import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.imgBackGround, this.imgColor});

  final String image;
  final Color? imgBackGround, imgColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 60,
          padding: EdgeInsets.all(14),
          decoration: ShapeDecoration(
            color: imgBackGround ?? Color(0xffFAFAFA),
            shape: OvalBorder(),
          ),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imgColor ?? Color(0xff4EB7F2), BlendMode.srcIn),
          ),
        ),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imgColor == null ? Color(0xff064060) : Colors.white,
          ),
        ),
      ],
    );
  }
}
