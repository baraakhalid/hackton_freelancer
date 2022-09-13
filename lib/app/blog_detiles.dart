import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackton_freelancer/get/blog_get_controller.dart';
import 'package:hackton_freelancer/helpers/context_extenssion.dart';
import 'package:hackton_freelancer/models/blog.dart';
import 'package:hackton_freelancer/models/process_response.dart';
import 'package:hackton_freelancer/widgets/app_text_button.dart';
class BlogDetiles extends StatefulWidget {
  BlogDetiles({Key? key,this.blog}) : super(key: key);
  final Blog? blog;

  @override
  State<BlogDetiles> createState() => _BlogDetilesState();
}

class _BlogDetilesState extends State<BlogDetiles> {
  BlogGetxController controller = Get.put<BlogGetxController>(BlogGetxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('تفاصيل التقرير',style: GoogleFonts.cairo(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Colors.black),),
          actions: [IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,))],


        ),
        body: Padding(

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

                                    Text(' براءة تربان ',style: GoogleFonts.cairo(fontSize: 12,fontWeight: FontWeight.w700),),


                                  ],
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                                child: Text('ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة',
                                  style: GoogleFonts.cairo(fontSize: 10,fontWeight: FontWeight.w400),),
                              ),




                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(

                          children: [
                            Spacer(),

                            AppTextButton(text: 'تعديل', onPressed: (){

                            },width: 140.w,backgroundColor: Color(0xff005959),),
                            Spacer(),
                            AppTextButton(text: 'حذف', onPressed: (){
                              // _deleteProduct(context, index);
                              // BlogGetxController.to.delete(controller.BlogItems[index].id!);
                            },width: 140.w,backgroundColor:Color(0xffCD1905),),
                            Spacer(),

                          ],
                        ),
                      ],
                    ),
                  )





    );
  }
}
