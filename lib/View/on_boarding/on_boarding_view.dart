import 'package:amina/resources/assets_resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import '../../Resources/string_resources.dart';
import 'package:flutter/material.dart';
import '../../Reusable_components/large_button.dart';
import '../../resources/color_resources.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../auth/login_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingView extends StatefulWidget {
  OnBoardingView({super.key});
  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

final List onBoardingData = [
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

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(width, height),
      child: Scaffold(
        backgroundColor: ColorsManager.backGroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: ColorsManager.primary),
                onPressed: skipMethod,
                child: Text(
                  StringsManager.skip,
                  style: TextStyle(color: ColorsManager.white),
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
                      child: Text(
                        onBoardingData[index]['title'],
                        style:
                            TextStyle(fontSize: 20, color: ColorsManager.black),
                      ),
                      height: 30.h,
                    ),
                    Text(
                      onBoardingData[index]['description'],
                      style:
                          TextStyle(fontSize: 20, color: ColorsManager.black),
                    ),
                  ],
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  (currentPage == 0)
                      ? LargeButton(
                          onPressed: skipMethod,
                          text: StringsManager.Continue,
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List<Widget>.generate(
                            onBoardingData.length,
                            (index) {
                              return AnimatedContainer(
                                duration: const Duration(
                                  milliseconds: 200,
                                ),
                                height: 10,
                                width: (index == currentPage) ? 15 : 10,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: (index == currentPage)
                                        ? ColorsManager.primary
                                        : ColorsManager
                                            .boardingSliderPointsColor),
                              );
                            },
                          ),
                        ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
