import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoldText extends StatelessWidget {
  final String text;
  final String text2;
  final double paddingTop;
  final double paddingBottom;

  const BoldText({
    super.key,
    required this.text,
    required this.text2,
    this.paddingBottom = 0,
    this.paddingTop = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
              child: Text(text,
                  style: TextStyle(
                      fontSize: 12.827587127685547.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(110, 110, 110, 1))),
            ),
            Padding(
              padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
              child: Text(text2,
                  style: TextStyle(
                      fontSize: 12.827587127685547.sp,
                      fontWeight: FontWeight.w300,
                      color: const Color.fromRGBO(110, 110, 110, 1))),
            )
          ],
        )
      ],
    );
  }
}
