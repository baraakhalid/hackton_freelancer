import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hackton_freelancer/screens/lanuch_screen.dart';
import 'package:hackton_freelancer/screens/on_bording/on_bordaing_screen.dart';

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
              debugShowCheckedModeBanner: false,

              initialRoute: '/launch_screen',
              routes: {
                '/launch_screen':(context) =>LaunchScreen(),
                '/on_boarding_screen':(context)=> OnBoardingScreen(),

              }


          );

        }

    );
  }
}


