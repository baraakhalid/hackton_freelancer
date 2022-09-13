import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackton_freelancer/app/admin/ads_detiles_admin.dart';
import 'package:hackton_freelancer/app/admin/courese_detiles_admin.dart';
import 'package:hackton_freelancer/app/ads_detiles.dart';
import 'package:hackton_freelancer/app/home_screen.dart';
import 'package:hackton_freelancer/screens/lanuch_screen.dart';
import 'package:hackton_freelancer/screens/on_bording/on_bordaing_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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

              initialRoute: '/courese_detiles_admin_screen',
              routes: {
                '/launch_screen':(context) =>LaunchScreen(),
                '/on_boarding_screen':(context)=> OnBoardingScreen(),
                '/home_screen':(context)=> HomeScreen(),
                '/ads_detiles_screen':(context)=> AdsDetiles(),
                '/ads_detiles_admin_screen':(context)=> AdsDetilesAdmin(),
                '/courese_detiles_admin_screen':(context)=> CoureseDetilesAdmin(),

              }


          );

        }

    );
  }
}


