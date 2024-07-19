import 'package:amina/Reusable_components/animated_slider.dart';
import '../../Resources/assets_resources.dart';
import '../../Resources/string_resources.dart';
import 'package:flutter/material.dart';
import '../../Reusable_components/large_button.dart';
import '../../Reusable_components/text_widget.dart';
import '../../resources/color_resources.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../auth/login_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});
  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

List onBoardingData = [
  {
    "image": AssetsResource.ThirdOnBoardingSVG,
    "title": StringsManager.onBoardingThirdTitle,
    "description": StringsManager.onBoardingThridDescription,
  },
  {
    "image": AssetsResource.SecondOnBoardingSVG,
    "title": StringsManager.onBoardingSecondTitle,
    "description": StringsManager.onBoardingSecondDescription,
  },
  {
    "image": AssetsResource.FirstOnBoardingSVG,
    "title": StringsManager.onBoardingFirstTitle,
    "description": StringsManager.onBoardingFirstDescription,
  },
];

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController pageController = PageController(
    initialPage: onBoardingData.length - 1,
    keepPage: true,
  );
  skipMethod() {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const LoginView()),
        (Route<dynamic> route) => false);
  }

  int currentPage = onBoardingData.length - 1;
  onChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backGroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorsManager.backGroundColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: TextButton(
              style:
                  TextButton.styleFrom(backgroundColor: ColorsManager.primary),
              onPressed: skipMethod,
              child: const TextWidget(
                text: StringsManager.skip,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: pageController,
            itemCount: onBoardingData.length,
            onPageChanged: onChanged,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SvgPicture.asset(
                    onBoardingData[index]['image'],
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 54.h,
                    child: TextWidget(
                      text: onBoardingData[index]['title'],
                      color: ColorsManager.black,
                      fontsize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextWidget(
                    text: onBoardingData[index]['description'],
                    color: ColorsManager.black,
                    fontsize: 14.sp,
                  ),
                ],
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 30.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                (currentPage == 0)
                    ? LargeButton(
                        leftPadding: 16.w,
                        rightPadding: 16.w,
                        fontSize: 16.sp,
                        onPressed: skipMethod,
                        text: StringsManager.Continue,
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List<Widget>.generate(
                          onBoardingData.length,
                          (index) {
                            return AnimatedSlider(
                                index: index, currentPage: currentPage);
                          },
                        ),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
