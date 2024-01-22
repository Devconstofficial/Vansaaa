import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BlackButton extends StatelessWidget {
  const BlackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 24.h,
                  ),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                      backgroundColor: const Color.fromRGBO(245, 244, 248, 1),
                      child: SvgPicture.asset('assets/images/Down.svg'),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 24.h,
                    left: 69.w,
                  ),
                  child: const Text(
                    'Reviews',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.30,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
