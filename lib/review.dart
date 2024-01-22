import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app2/widgets/Review/appartmentcard.dart';
import 'package:new_app2/widgets/Review/backbutton.dart';
import 'package:new_app2/widgets/Review/reviewcard.dart';

class Review extends StatelessWidget {
  const Review({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<bool> values = [false, true, false, true, false];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BlackButton(),
                const AppartmentCard(),
                Padding(
                  padding: EdgeInsets.only(left: 3.w, top: 20.h, bottom: 20.h),
                  child: const Text(
                    'User reviews',
                    style: TextStyle(
                      color: Color(0xFF242B5C),
                      fontSize: 18,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.54,
                    ),
                  ),
                ),
                SizedBox(
                  height: 350.h,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: values.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ReviewCard(
                          imagePresent: values[index],
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
