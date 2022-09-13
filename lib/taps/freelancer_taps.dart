import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackton_freelancer/widgets/app_text_button.dart';
class FreelancerScreen extends StatelessWidget {
  const FreelancerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
              // color: Color(0xffffffff),
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),

              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.h, bottom: 5.h, right: 5.w),
                    child: Image.asset(
                      'images/free.png', height: 60, fit: BoxFit.cover,),
                  ),
                  SizedBox(
                    width: 20.w,

                  ),
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'براءة تربان',
                        style: GoogleFonts.cairo(
                            fontWeight: FontWeight.w500, fontSize: 16.sp),
                      ),
                      Text(
                        'مبرمج فلاتر',
                        style: GoogleFonts.cairo(
                            fontWeight: FontWeight.w400, fontSize: 14.sp),
                      ),
                    ],
                  ), Spacer(),

                  ElevatedButton(onPressed: () {
                    Navigator.pushReplacementNamed(context, '/profile_screen');
                  },
                    child: Text('الصفحة الشخصية', style: GoogleFonts.cairo(
                        fontWeight: FontWeight.w500, fontSize: 10.sp),),),
                  SizedBox(width: 5.w,),


                ],
              ),
            );
        }

      ),
    );
  }
}
