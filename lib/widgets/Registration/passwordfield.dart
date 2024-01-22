import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool hidePass = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            obscureText: hidePass,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    width: 1, color: Color.fromRGBO(103, 114, 148, 1)),
                borderRadius: BorderRadius.circular(4.r),
              ),
              suffixIcon: IconButton(
                icon: hidePass
                    ? const Icon(Icons.remove_red_eye)
                    : const Icon(Icons.panorama_fish_eye),
                onPressed: () {
                  setState(() {
                    hidePass = !hidePass;
                  });
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.r),
              ),
              hintText: 'Password',
            ),
          ),
        ],
      ),
    );
  }
}
