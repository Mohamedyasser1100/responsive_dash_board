import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
              fit: BoxFit.fill, image: AssetImage(Assets.imagesCreditCard)),
          color: const Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 31, right: 24, top: 16),
              title: Text(
                'Name card',
                style: AppStyle.styleRegular16(context)
                    .copyWith(color: Colors.white),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyle.styleRegular20(context)
                    .copyWith(color: Colors.white),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 48 - 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyle.styleSemiBols24(context)
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyle.styleRegular16(context)
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            const Flexible(
              child: const SizedBox(
                height: 54 - 28,
              ),
            )
          ],
        ),
      ),
    );
  }
}
