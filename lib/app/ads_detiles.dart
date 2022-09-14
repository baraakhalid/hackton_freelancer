import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackton_freelancer/widgets/app_text_button.dart';
class AdsDetiles extends StatelessWidget {
  const AdsDetiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('تفاصيل الإعلانات',style: GoogleFonts.cairo(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Colors.black),),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,))],


      ),
      body:
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 21.h),
          child: Column(
            children: [
              Center(
                child: Column(

                  children: [
                    Image.asset('images/img.png'),
                    Text('يوكاس مشروع العمل الحر',style: GoogleFonts.cairo(fontSize: 18,fontWeight: FontWeight.w500),),
                    Text('غزة',style: GoogleFonts.cairo(fontSize: 16,fontWeight: FontWeight.w400)),

                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('تفاصيل الإعلان:',style: GoogleFonts.cairo(fontSize: 16,fontWeight: FontWeight.w600)),
                    Text('نحن شركة تركز على قطاع الخدمات ، نحن نقدم الحلول لالمستخدمين الذين يحتاجون إلى المساعدة في الصيانة الصحة ، العديد من المنتجات التي لدينا أطلقت حول الصحة وتشمل صالة الألعاب الرياضية المعدات والمنتجات الغذائية الصحية وكبسولات الفيتامينات',
                    style: GoogleFonts.cairo(fontSize: 12,fontWeight: FontWeight.w400 ,),),
                    SizedBox(height: 20,),
                    Text(' مزيد من المعلومات:',style: GoogleFonts.cairo(fontSize: 16,fontWeight: FontWeight.w600)),
                    Text('نحن شركة تركز على قطاع الخدمات ، نحن نقدم الحلول لالمستخدمين الذين يحتاجون إلى المساعدة في الصيانة الصحة ، العديد من المنتجات التي لدينا أطلقت حول الصحة وتشمل صالة الألعاب الرياضية المعدات والمنتجات الغذائية الصحية وكبسولات الفيتامينات',
                      style: GoogleFonts.cairo(fontSize: 12,fontWeight: FontWeight.w400 ,),),



                  ],

                ),
              ),
              Spacer(),
              AppTextButton(text: 'الإعلان', onPressed: (){}),
              SizedBox(height: 20,),

            ],
          ),
        ),
    );
  }
}
