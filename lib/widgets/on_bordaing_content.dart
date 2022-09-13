import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    Key? key,
  }) : super(key: key);

  final String imageUrl;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.elliptical(200, 30),
              topRight: Radius.elliptical(200, 30))),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Image.asset(
                  'images/$imageUrl.png',
                  height: 330,
                  // fit: BoxFit.cover,
                ),
              ),

              Text(
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                subTitle,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class OnBoardingContent extends StatelessWidget {
//   const OnBoardingContent({
//     Key? key,
//     required this.image,
//     required this.title,
//   }) : super(key: key);
//
//   final String image;
//   final String title;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const Spacer(),
//         Padding(
//           padding: const EdgeInsets.only(top: 20),
//           child: Text(
//             'TOKOTO',
//             style: GoogleFonts.nunito(
//               fontWeight: FontWeight.bold,
//               fontSize: 36,
//               color: const Color(0xffFF7750),
//             ),
//           ),
//         ),
//         Text(
//           title,
//           textAlign: TextAlign.center,
//
//         ),
//         const Spacer(flex: 2),
//         Image.asset(
//           'images/$image.png',
//           height: 267,
//           width: 326,
//           fit: BoxFit.fill,
//         ),
//
//       ],
//     );
//   }
// }
