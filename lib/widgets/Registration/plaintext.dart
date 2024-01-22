import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlainText extends StatelessWidget {
  final String text;
  final double paddingTop;
  final double paddingBottom;

  const PlainText({
    super.key,
    required this.text,
    this.paddingTop = 20,
    this.paddingBottom = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
      child: Text(text,
          style: TextStyle(
            color: const Color.fromRGBO(254, 110, 0, 1),
            fontSize: 14.sp,
            fontFamily: 'Rubik',
            fontWeight: FontWeight.w400,
          )),
    );
  }
}
