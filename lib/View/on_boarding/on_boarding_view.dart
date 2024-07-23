import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Resources/string_resources.dart';
import 'package:amina/Reusable_components/animated_slider.dart';
import 'package:amina/Reusable_components/large_button.dart';
import 'package:amina/Reusable_components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../View_model/on_boarding_view_model.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OnBoardingViewModel(),
      child: Consumer<OnBoardingViewModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            backgroundColor: ColorsManager.backGroundColor,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: ColorsManager.backGroundColor,
              title: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: ColorsManager.primary),
                  onPressed: () => viewModel.skipMethod(context),
                  child: const TextWidget(
                    text: StringsManager.skip,
                  ),
                ),
              ),
            ),
            body: Stack(
              children: [
                PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: viewModel.pageController,
                  itemCount: viewModel.onBoardingData.length,
                  onPageChanged: viewModel.onPageChanged,
                  itemBuilder: (context, index) {
                    final data = viewModel.onBoardingData[index];
                    return Column(
                      children: [
                        SvgPicture.asset(
                          data.image,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 54.h,
                          child: TextWidget(
                            text: data.title,
                            color: ColorsManager.black,
                            fontsize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextWidget(
                          text: data.description,
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
                      (viewModel.currentPage ==
                              viewModel.onBoardingData.length - 1)
                          ? LargeButton(
                              leftPadding: 16.w,
                              rightPadding: 16.w,
                              fontSize: 16.sp,
                              onPressed: () => viewModel.skipMethod(context),
                              text: StringsManager.Continue,
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List<Widget>.generate(
                                viewModel.onBoardingData.length,
                                (index) {
                                  return AnimatedSlider(
                                      index: index,
                                      currentPage: viewModel.currentPage);
                                },
                              ),
                            ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
