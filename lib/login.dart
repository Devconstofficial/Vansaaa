import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app2/singleproduct.dart';
import 'package:new_app2/widgets/Registration/actionbutton.dart';
import 'package:new_app2/widgets/Registration/containerbutton.dart';
import 'package:new_app2/widgets/Registration/headingtext.dart';
import 'package:new_app2/widgets/Registration/input_field.dart';
import 'package:new_app2/widgets/Registration/passwordfield.dart';
import 'package:new_app2/widgets/Registration/plaintext.dart';
import 'package:new_app2/widgets/Registration/subheadingtext.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 70.h,
            ),
            child: Column(
              children: [
                const HeadingText(text: 'Welcome Back'),
                const SubHeadingText(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus.'),
                Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ContainerButton(
                        onPressGoogle: () {
                          print('google');
                        },
                        onPressFacebook: () {
                          print('Facebook');
                        },
                        paddingBottom: 20.h,
                        paddingleft: 15.w,
                        paddingright: 15.w,
                      ),
                      const InputField(label: 'Email'),
                      const PasswordField(),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30.w, top: 5.h, bottom: 5.h),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text('Forgot Password?',
                        style: TextStyle(
                          color: const Color.fromRGBO(254, 110, 0, 1),
                          fontSize: 14.sp,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w400,
                        )),
                  ]),
                ),
                ActionButton(
                    text: 'Login',
                    paddingBottom: 0.h,
                    paddingTop: 70.h,
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SingleProduct()),
                      );
                    }),
                PlainText(
                  text: "Don't have an account?Join us",
                  paddingTop: 45.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
