import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoubleButton extends StatefulWidget {
  final String text;
  final Color color;
  final Function onPress;
  const DoubleButton(
      {super.key,
      required this.text,
      required this.color,
      required this.onPress});

  @override
  State<DoubleButton> createState() => _ButtonState();
}

class _ButtonState extends State<DoubleButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h, bottom: 15.h),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(145.w, 50.h),
          backgroundColor: widget.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        onPressed: () {
          widget.onPress();
        },
        child: Text(widget.text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontFamily: 'Rubik',
                fontWeight: FontWeight.w500)),
      ),
    );
  }
}
