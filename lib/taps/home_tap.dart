import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackton_freelancer/widgets/home_section.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return ListView(
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 130),
              child: GridView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                  // mainAxisExtent: 90,
                  childAspectRatio: 90 / 230,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15,),
                    child: Container(
                      // color: Color(0xffffffff),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),

                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(top: 5.h,bottom: 5.h,right: 5.w),
                            child: Image.asset('images/company.png'),
                          ),
                          SizedBox(
                            width: 20.w,

                          ),
                          Padding(
                            padding:  EdgeInsets.only(top: 10.h),
                            child: Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'يوكاس',
                                  style: GoogleFonts.cairo(
                                      fontWeight: FontWeight.w400, fontSize: 16.sp),
                                ),
                                Text(
                                  'كاتب محتوى',
                                  style: GoogleFonts.cairo(
                                      fontWeight: FontWeight.w500, fontSize: 18.sp),
                                ),
                              ],
                            ),
                          ),Spacer(),

                          ElevatedButton(onPressed: (){},child: Text('تفاصيل الإعلان', style: GoogleFonts.cairo(
                              fontWeight: FontWeight.w500, fontSize: 10.sp),),),
                          SizedBox(width: 5.w,),



                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            HomeSection(title: 'تقارير', onPressed: (){}),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 300),
              child: GridView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 250,
                  childAspectRatio: 150 / 190,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15,),
                    child: Container(

                      // color: Color(0xffffffff),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),

                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              // padding: const EdgeInsets.only(top: 5,bottom: 5,right: 5),

                             Image.asset('images/blog.png',height: 130,width: 250,fit: BoxFit.fill,),
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(' تقرير جديد ',style: GoogleFonts.cairo(fontWeight: FontWeight.w700,fontSize: 20),),
                                  Text('ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة',
                                  style: GoogleFonts.cairo(fontSize: 10,fontWeight: FontWeight.w400),),
                                ],
                              ),
                            ),





                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            HomeSection(title: 'فيديوهات', onPressed: (){}),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 300),
              child: GridView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 250,
                  childAspectRatio: 150 / 190,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15,),
                    child: Container(

                      // color: Color(0xffffffff),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),

                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // padding: const EdgeInsets.only(top: 5,bottom: 5,right: 5),

                            Image.asset('images/blog.png',height: 130,width: 250,fit: BoxFit.fill,),
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
                              padding: const EdgeInsets.only(right: 5),
                              child: Text('ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة',
                                style: GoogleFonts.cairo(fontSize: 10,fontWeight: FontWeight.w400),),
                            ),
                            Text('الرابط ',style: GoogleFonts.cairo(color: Colors.blue),)





                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),





          ],

    );
  }
}
