import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackton_freelancer/widgets/custom_text_filed.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        title: Text(
          'الملف الشخصي',
          style: GoogleFonts.poppins(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        physics: const ScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 0.r),
        children: [
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              width: 90.w,
              height: 90.h,
              margin: EdgeInsetsDirectional.only(top: 24.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45.r),
              ),
              child: Image.asset(
                'images/prof.png',
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 6.h,
              ),
              Text(
                'صهيب الجزار',
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp,
                    height: 0.h),
              ),
              Text(
                'مبرمج Flutter',
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    height: 0.h),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff0F62AC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  minimumSize: Size(141.w, 30.h),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.edit_outlined,
                      size: 16.sp,
                      color: Colors.white70,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    TextButton(
                      onPressed: () { Navigator.pushReplacementNamed(context, '/edit_profile_screen') ;},
                      child: Text( 'عدّل ملفك الشخصي',
                      style: GoogleFonts.poppins(
                          fontSize: 16.sp, color: Colors.white70),
                          ),


                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  const Spacer(),
                  Image.asset('images/icon_1.png'),
                  SizedBox(width: 10.w),
                  Image.asset('images/icon_2.png'),
                  SizedBox(width: 10.w),
                  Image.asset('images/icon_3.png'),
                  SizedBox(width: 10.w),
                  Image.asset('images/icon_4.png'),
                  SizedBox(width: 10.w),
                  Image.asset('images/icon_5.png'),
                  SizedBox(width: 10.w),
                  Image.asset('images/icon_6.png'),
                  SizedBox(width: 10.w),
                  Image.asset('images/icon_7.png'),
                  const Spacer(),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  Text(
                    'أعمالي',
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 7,
                    mainAxisSpacing: 7,
                    mainAxisExtent: 163.h),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.zero,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CachedNetworkImage(
                          height: 128.h,
                          width: 180.w,
                          imageUrl:
                          'https://www.iconfinder.com/static/img/meta-generic.png?d34117af5a',
                          imageBuilder: (context, imageProvider) => Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                  scale: 10),
                            ),
                          ),
                          placeholder: (context, url) => Center(
                            child: SizedBox(
                              height: 40.h,
                              width: 40.w,
                              child: const CircularProgressIndicator(
                                strokeWidth: 2,
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) => Icon(
                            Icons.error,
                            size: 30.r,
                            color: Colors.red.shade800,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(start: 8.w),
                          child: Text(
                            'مبرمج Flutter',
                            style: GoogleFonts.poppins(),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
              SizedBox(
                height: 3.h,
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: Card(
        elevation: 0,
        margin: EdgeInsets.zero,
        color: const Color(0xffF5F5F5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(top: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff0F62AC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      minimumSize: Size(161.w, 48.h),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone_outlined,
                          size: 16.sp,
                          color: Colors.white70,
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Text(
                          'تواصل مع المستقل',
                          style: GoogleFonts.poppins(
                              fontSize: 16.sp, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffF58634),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      minimumSize: Size(161.w, 48.h),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.email_outlined,
                          size: 16.sp,
                          color: Colors.white70,
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Text(
                          'أرسل إيميل',
                          style: GoogleFonts.poppins(
                              fontSize: 16.sp, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(bottom: 10.h, top: 5.h),
              child: FloatingActionButton(
                onPressed: () {
                  showAlertDialog2();
                },
                backgroundColor: const Color(0xff0F62AC),
                child: Icon(
                  Icons.add,
                  size: 60.r,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  void showAlertDialog2() {
    showDialog(
        context: context,
        builder: (_) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return AlertDialog(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r)),
                  title: Center(
                    child: Text(
                      'إضافة إعلان',
                      style: GoogleFonts.poppins(fontSize: 18.sp),
                    ),
                  ),
                  content: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    height: 745.h,
                    width: 343.w,
                    child: ListView(
                      children: [
                        Text(
                          'اسم الإعلان',
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                         AppTextFiledHint(
                          hintText: 'أدخل اسم الإعلان',
                          textInputType: TextInputType.text,

                        ),
                        Text(
                          'تاريخ البداية',
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                         AppTextFiledHint(
                          hintText: 'اختر تاريخ بداية الإعلان',
                          textInputType: TextInputType.datetime,
                          suffix: Icons.calendar_today_outlined,
                        ),
                        Text(
                          'وقت البداية',
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                         AppTextFiledHint(
                          hintText: 'اختر توقيت بداية الإعلان',
                          textInputType: TextInputType.text,
                          suffix: Icons.timer_outlined,
                        ),
                        Text(
                          'تفاصيل الإعلان',
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                         AppTextFiledHint(
                          hintText: 'التفاصيل',
                          textInputType: TextInputType.multiline,
                          maxLength: 4,
                          height: 120,
                        ),
                        Text(
                          'الموقع',
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                         AppTextFiledHint(
                          hintText: 'أدخل موقعك',
                          textInputType: TextInputType.text,
                        ),
                        Text(
                          'اسم الشركة',
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                         AppTextFiledHint(
                          hintText: 'أدخل اسم الشركة',
                          textInputType: TextInputType.text,
                        ),
                        Text(
                          'رابط موقع الشركة',
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                         AppTextFiledHint(
                          hintText: '',
                          textInputType: TextInputType.text,
                        ),
                        Text(
                          'صورة الإعلان',
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                         AppTextFiledHint(
                          hintText: 'أدخل اسم الشركة',
                          textInputType: TextInputType.text,
                          suffix: Icons.file_upload_outlined,
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    SizedBox(
                      height: 48.h,
                      width: 322.w,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff0F62AC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.r),
                            ),
                          ),
                        ),
                        child: Text(
                          'حفظ',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                );
              });
        });
  }
}