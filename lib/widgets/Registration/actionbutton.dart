import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActionButton extends StatefulWidget {
  final String text;
  final Function onPress;
  final double paddingTop;
  final double paddingBottom;

  const ActionButton({
    super.key,
    required this.text,
    required this.onPress,
    this.paddingBottom = 0,
    this.paddingTop = 0,
  });

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: widget.paddingTop, bottom: widget.paddingBottom),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(295.w, 54.h),
          backgroundColor: const Color.fromRGBO(254, 110, 0, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        onPressed: () {
          widget.onPress();
        },
        child: Text(widget.text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontFamily: 'Rubik',
                fontWeight: FontWeight.w500)),
      ),
    );
  }
}
