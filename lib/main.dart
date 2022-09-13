import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackton_freelancer/app/admin/ads_detiles_admin.dart';
import 'package:hackton_freelancer/app/admin/blog_detiles_admin.dart';
import 'package:hackton_freelancer/app/admin/courese_detiles_admin.dart';
import 'package:hackton_freelancer/app/ads_detiles.dart';
import 'package:hackton_freelancer/app/blog_detiles.dart';
import 'package:hackton_freelancer/app/courese_detiles.dart';
import 'package:hackton_freelancer/app/edit_profile_screen.dart';
import 'package:hackton_freelancer/app/home_screen.dart';
import 'package:hackton_freelancer/app/home_screen_user.dart';
import 'package:hackton_freelancer/app/profile_screen.dart';
import 'package:hackton_freelancer/auth/login.dart';
import 'package:hackton_freelancer/auth/login_admin.dart';
import 'package:hackton_freelancer/auth/register.dart';
import 'package:hackton_freelancer/database/db_controller.dart';
import 'package:hackton_freelancer/screens/lanuch_screen.dart';
import 'package:hackton_freelancer/screens/on_bording/on_bordaing_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbController().initDatabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        designSize: Size(375, 812),
        builder:(context, child){
          return MaterialApp(
              theme: ThemeData(
                appBarTheme: AppBarTheme(
                  iconTheme: const IconThemeData(
                      color: Color(0xFFffffff)
                  ),

                  centerTitle: true,
                  elevation: 0,
                  color: const Color(0xff0F62AC),
                  titleTextStyle: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color:  Colors.white,
                  ),
                ),
              ),
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                // AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('ar'),
                Locale('en'),
              ],
              locale: const Locale('ar'),

              initialRoute: '/launch_screen',
              routes: {
                '/launch_screen':(context) =>LaunchScreen(),
                '/on_boarding_screen':(context)=> OnBoardingScreen(),
                '/login_screen':(context)=> LoginScreen(),
                '/register_screen':(context)=> RegisterScreen(),
                '/home_screen':(context)=> HomeScreen(),
                '/home_screen_user':(context)=> HomeScreenUser(),
                '/profile_screen':(context)=> ProfileScreen(),
                '/ads_detiles_screen':(context)=> AdsDetiles(),
                '/blog_detiles_screen':(context)=> BlogDetiles(),
                '/courese_detiles_screen':(context)=> CoureseDetiles(),
                '/ads_detiles_admin_screen':(context)=> AdsDetilesAdmin(),
                '/courese_detiles_admin_screen':(context)=> CoureseDetilesAdmin(),
                '/blog_detiles_admin_screen':(context)=> BlogDetilesAdmin(),
                '/edit_profile_screen':(context)=> EditProfileScreen(),
                '/login_admin_screen':(context)=> LoginAdminScreen(),

              }


          );

        }

    );
  }
}


