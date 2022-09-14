import 'package:flutter/material.dart';

import 'package:hackton_freelancer/widgets/on_bordaing_content.dart';
import 'package:hackton_freelancer/helpers/app_colors.dart';

import 'package:hackton_freelancer/widgets/page_view_indecator.dart';
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _curruntIndex = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              physics: const BouncingScrollPhysics(),
              controller: _pageController,
              onPageChanged: (int curruntPage) {
                // print('Currunt Page : $curruntPage');
                setState(() {
                  _curruntIndex = curruntPage;
                });
              },
              children: const [
                OnBoardingContent(
                  imageUrl: 'Graphic-Design',
                  title: 'Innovative Solutions',
                  subTitle:
                  'Lorem ipsum dolor sit amet, consectetur \n adipisicing elit, sed do eiusmod tempor \nincididunt ut labore et dolore.',
                ),
                OnBoardingContent(
                    imageUrl: 'Frame',
                    title: 'Integrated teamwork',
                    subTitle:
                    'Lorem ipsum dolor sit amet, consectetur \nadipisicing elit, sed do eiusmod.'),
                OnBoardingContent(
                    imageUrl: 'Frame (1)',
                    title: 'Excellent developer',
                    subTitle:
                    'Lorem ipsum dolor sit amet, consectetur \nadipisicing elit, sed do eiusmod tempor \nincididunt ut labore et dolore.')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                TabPageSelectorIndicator(
                  backgroundColor:
                  _curruntIndex == 0 ? primary : indicatorColor,
                  borderColor: Colors.transparent,
                  size: _curruntIndex == 0 ? 18 : 12,
                ),
                TabPageSelectorIndicator(
                  backgroundColor:
                  _curruntIndex == 1 ? primary : indicatorColor,
                  borderColor: Colors.transparent,
                  size: _curruntIndex == 1 ? 18 : 12,
                ),
                TabPageSelectorIndicator(
                  backgroundColor:
                  _curruntIndex == 2 ? primary : indicatorColor,
                  borderColor: Colors.transparent,
                  size: _curruntIndex == 2 ? 18 : 12,
                ),
                const Spacer(),
                FloatingActionButton(
                  backgroundColor: primary,
                  onPressed: () {
                    if (_curruntIndex < 2) {
                      _pageController.nextPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeInOutBack);
                    } else {
                      Navigator.pushReplacementNamed(context, '/login_screen');
                    }
                  },
                  child: const Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
