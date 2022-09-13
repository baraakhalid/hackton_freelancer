import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackton_freelancer/app/admin/blog_detiles_admin.dart';
import 'package:hackton_freelancer/get/ad_get_controller.dart';
import 'package:hackton_freelancer/get/blog_get_controller.dart';
import 'package:hackton_freelancer/helpers/utility.dart';
import 'package:hackton_freelancer/models/ad.dart';
import 'package:hackton_freelancer/models/blog.dart';
import 'package:hackton_freelancer/widgets/custom_text_filed.dart';
import 'package:hackton_freelancer/widgets/home_section.dart';
import 'package:hackton_freelancer/helpers/context_extenssion.dart';
import 'package:image_picker/image_picker.dart';


class MainScreen extends StatefulWidget {
   MainScreen({Key? key}) : super(key: key);




   @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  BlogGetxController controller = Get.put<BlogGetxController>(BlogGetxController());
  AdGetxController adController = Get.put<AdGetxController>(AdGetxController());
  String? imageName;
  Widget? photo = const Icon(Icons.add_photo_alternate_outlined);

  late TextEditingController _coursenameTextController;
  late TextEditingController _detialsTextController;
  late TextEditingController _imageTextController;

  late TextEditingController _nameadTextController;
  late TextEditingController _dateadTextController;
  late TextEditingController _starthoursTextController;
  late TextEditingController _infoTextController;
  late TextEditingController _houreTextController;
  late TextEditingController _addressesTextController;
  late TextEditingController _companyTextController;
  late TextEditingController _pathTextController;



  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    _coursenameTextController=TextEditingController();
    _detialsTextController = TextEditingController();
    _imageTextController = TextEditingController();

     _nameadTextController=TextEditingController();
    _dateadTextController=TextEditingController();
    _starthoursTextController = TextEditingController();
    _infoTextController = TextEditingController();
    _houreTextController = TextEditingController();
    _pathTextController = TextEditingController();
    _addressesTextController = TextEditingController();
    _companyTextController = TextEditingController();




  }
  @override
  void dispose() {
    // TODO: implement dispose
    _detialsTextController.dispose();
    _coursenameTextController.dispose();
    _imageTextController.dispose();

    _nameadTextController.dispose();
    _dateadTextController.dispose();
    _starthoursTextController.dispose();
    _infoTextController.dispose();
    _houreTextController.dispose();
    _pathTextController.dispose();
    _addressesTextController.dispose();
    _companyTextController.dispose();



    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          body:GetX<BlogGetxController>(
            builder: (BlogGetxController controller){
              if (controller.BlogItems.isNotEmpty){
                return   ListView(
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
                                        Text('يوكاس', style: GoogleFonts.cairo(fontWeight: FontWeight.w400, fontSize: 16.sp),),
                                        Text(
                                          'كاتب محتوى',
                                          style: GoogleFonts.cairo(
                                              fontWeight: FontWeight.w500, fontSize: 18.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),

                                  ElevatedButton(onPressed: (){
                                    showAlertDialog2(context);
                                    print('object');


                                  },child: Text('إضافة إعلان', style: GoogleFonts.cairo(
                                      fontWeight: FontWeight.w500, fontSize: 10.sp),),),
                                  SizedBox(width: 5.w,),



                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    HomeSection(title: 'تقارير', onPressed: (){showAlertDialog(context);},subtitle: 'إضافة تقرير',),
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
                            child: InkWell(
                              onTap:(){  Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BlogDetilesAdmin(),
                                ),
                              );},
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

                                      // Image.asset( Utility.dataFromBase64String(controller.BlogItems[index].image),height: 130,width: 250,fit: BoxFit.fill,),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 5),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(controller.BlogItems[index].name,style: GoogleFonts.cairo(fontWeight: FontWeight.w700,fontSize: 20),),
                                            Text(controller.BlogItems[index].info,
                                              style: GoogleFonts.cairo(fontSize: 10,fontWeight: FontWeight.w400),),
                                          ],
                                        ),
                                      ),





                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    HomeSection(title: 'دورات', onPressed: (){},subtitle: 'إضافة تقرير',),
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
              else{
                return Center(child: Text('No Data'),);

              }
            }
          )

        );
            // }

            }





  void showAlertDialog(BuildContext context ) {
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
                      'إضافة تقرير',
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
                          'اسم التقرير',
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
                          hintText: 'أدخل اسم التقرير',
                          textInputType: TextInputType.text,
                          controller: _coursenameTextController,

                        ),

                        Text(
                          'تفاصيل التقرير',
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
                          controller: _detialsTextController,
                          maxLength: 4,
                          height: 120,
                        ),
                        Text(
                          'صورة تعريفية للتقرير',
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () async {
                                await ImagePicker()
                                    .pickImage(source: ImageSource.gallery)
                                    .then((imgFile) async {
                                  String imgString =
                                  Utility.base64String(await imgFile!.readAsBytes());
                                  imageName = imgString;
                                });
                                setState(() {
                                  photo = getPhoto(imageName!);
                                });
                              },
                              child: Container(
                                height: 80.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                  color: const Color(0XFFD8D8D8),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: photo,
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),

                      ],
                    ),
                  ),
                  actions: [
                    SizedBox(
                      height: 48.h,
                      width: 322.w,
                      child: ElevatedButton(
                        onPressed: () {
                          BlogGetxController.to.create(blog);
                        },
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
  void showAlertDialog2(BuildContext context ) {
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
                           controller: _nameadTextController,
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
                           controller: _dateadTextController,
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
                           controller: _starthoursTextController,
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
                           controller: _detialsTextController,
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
                           controller: _addressesTextController,
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
                           controller: _companyTextController,
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
                           controller: _pathTextController,
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
                        Row(
                          children: [
                            InkWell(
                              onTap: () async {
                                await ImagePicker()
                                    .pickImage(source: ImageSource.gallery)
                                    .then((imgFile) async {
                                  String imgString =
                                  Utility.base64String(await imgFile!.readAsBytes());
                                  imageName = imgString;
                                });
                                setState(() {
                                  photo = getPhoto(imageName!);
                                });
                              },
                              child: Container(
                                height: 80.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                  color: const Color(0XFFD8D8D8),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: photo,
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                        //  AppTextFiledHint(
                        //   hintText: 'أدخل اسم الشركة',
                        //   textInputType: TextInputType.text,
                        //   suffix: Icons.file_upload_outlined,
                        // ),
                      ],
                    ),
                  ),
                  actions: [
                    SizedBox(
                      height: 48.h,
                      width: 322.w,
                      child: ElevatedButton(
                        onPressed: () {
                          AdGetxController.to.create(ad);
                        },
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
  Blog get blog {
    Blog blog=Blog();
    blog.name = _coursenameTextController.text;
    blog.info = _detialsTextController.text;
    blog.image = imageName!;

    return blog;
  }
  Ad get ad {
    Ad ad=Ad();
    ad.name = _nameadTextController.text;
    ad.date = _dateadTextController.text;
    ad.startHoure = _starthoursTextController.text;
    ad.info = _infoTextController.text;
    ad.houre = _houreTextController.text ;
    ad.address = _addressesTextController.text;
    ad.company = _companyTextController.text;
    ad.path = _pathTextController.text;



    ad.image = imageName!;


    return ad;
  }
  Widget? getPhoto(String imageName) {
    return Utility.imageFromBase64String(imageName);
  }
}
