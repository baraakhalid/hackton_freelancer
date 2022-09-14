import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackton_freelancer/get/blog_get_controller.dart';
import 'package:hackton_freelancer/helpers/app_colors.dart';
import 'package:hackton_freelancer/taps/freelancer_taps.dart';
import 'package:hackton_freelancer/taps/home_tap_user.dart';
class HomeScreenUser extends StatefulWidget {
  HomeScreenUser({Key? key}) : super(key: key);
  BlogGetxController Controller = Get.put<BlogGetxController>(BlogGetxController());


  @override
  State<HomeScreenUser> createState() => _HomeScreenUserState();
}

class _HomeScreenUserState extends State<HomeScreenUser>with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)),
        ),
        title: Text('الصفحة الرئيسية',style: TextStyle(fontSize: 16),),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.menu))],
        leading: IconButton(onPressed: (){},icon: Icon(Icons.add_alert_sharp)),

      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.w),
            child: TabBar(
              // isScrollable: true,
              indicatorWeight: 2,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.zero,
              indicator: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.circular(10),
              ),
              labelColor: Colors.white,
              labelStyle: GoogleFonts.poppins(
                fontSize: 14,fontWeight: FontWeight.w700,
              ),
              unselectedLabelColor: primary,
              unselectedLabelStyle: GoogleFonts.poppins(
                fontSize: 14,fontWeight: FontWeight.w700,
              ),
              padding: EdgeInsets.only(top: 10 ),
              controller: _tabController,
              tabs: const [
                Tab(text: 'الشاشة الرئيسية',),
                Tab(text: 'صاحب المهارة'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                MainUserScreen(),
                FreelancerScreen()],
              controller: _tabController,
            ),
          ),

        ],
      ),



    );
  }
}
