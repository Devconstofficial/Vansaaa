import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerButton extends StatefulWidget {
  final Function onPressGoogle;
  final Function onPressFacebook;
  final double paddingTop;
  final double paddingBottom;
  final double paddingleft;
  final double paddingright;

  const ContainerButton({
    super.key,
    required this.onPressGoogle,
    required this.onPressFacebook,
    this.paddingTop = 0,
    this.paddingBottom = 0,
    this.paddingleft = 0,
    this.paddingright = 0,
  });

  @override
  State<ContainerButton> createState() => _ContainerButtonState();
}

class _ContainerButtonState extends State<ContainerButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.paddingBottom,
          bottom: widget.paddingBottom,
          left: widget.paddingleft,
          right: widget.paddingright),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {
                widget.onPressGoogle();
              },
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: Image.asset('assets/images/G.png'),
                  ),
                  Text('Google',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: 'Rubik',
                        color: const Color.fromRGBO(103, 114, 148, 1),
                        fontWeight: FontWeight.w300,
                      ))
                ],
              )),
          GestureDetector(
              onTap: () {
                widget.onPressFacebook();
              },
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: Image.asset('assets/images/F.png'),
                  ),
                  Text('Facebook',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color.fromRGBO(103, 114, 148, 1),
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w300,
                      ))
                ],
              )),
        ],
      ),
    );
  }
}
