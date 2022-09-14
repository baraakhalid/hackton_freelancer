import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackton_freelancer/widgets/app_text_button.dart';
class CoureseDetiles extends StatelessWidget {
  const CoureseDetiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('تفاصيل الكورس',style: GoogleFonts.cairo(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Colors.black),),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,))],


      ),
      body:  Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8.w,vertical: 15.h),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                    ),
                  ]


              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('images/blog.png',fit: BoxFit.fill,height: 154,width: double.infinity,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      children: [
                        Image.asset('images/prof.png',height: 35.h,width: 35.w,),

                        Text(' براءة تربان ',style: GoogleFonts.cairo(fontSize: 14),),

                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      children: [

                        Text(' براءة تربان ',style: GoogleFonts.cairo(fontSize: 12,fontWeight: FontWeight.w700),),
                        Spacer(),
                        Text('30h')

                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                    child: Text('ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة',
                      style: GoogleFonts.cairo(fontSize: 10,fontWeight: FontWeight.w400),),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8.w),
                    child: Text('رابط الكورس',style: GoogleFonts.cairo(color: Colors.blue),),
                  ) ,
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8.w),
                    child: Text('http:\\',),
                  )



                ],
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),



    );
  }
}
