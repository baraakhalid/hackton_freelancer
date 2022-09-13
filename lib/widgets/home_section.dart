import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w),
          child: Text(
            title,
            style: GoogleFonts.nunito(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: onPressed,
          child: Text(
            'المزيد',
            style: GoogleFonts.nunito(),
          ),
        )
      ],
    );
  }
}
