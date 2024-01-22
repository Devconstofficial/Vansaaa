import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeadingText extends StatelessWidget {
  final String text;
  const HeadingText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 24.sp,
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w700,
        ));
  }
}
