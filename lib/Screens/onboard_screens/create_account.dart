import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/create-account/create_account_buttons.dart';
import '../../widgets/create-account/slide_progress_tracker.dart';
import '../../widgets/create-account/slider_items.dart';
import '../../logic/create_account_cubit.dart';

class ScreenSlides {
  final String title;
  final dynamic image;

  ScreenSlides(this.title, this.image);
}

class CreateAccountScreen extends StatelessWidget {
  final List<ScreenSlides> images = [
    ScreenSlides(
      'Results archived for future viewing',
      SvgPicture.asset(
        'assets/images/Illustration.svg',
        height: double.infinity,
      ),
    ),
    ScreenSlides(
      'Book a consultation with an expert',
      SvgPicture.asset(
        'assets/images/Path to pregnancy.svg',
        height: double.infinity,
      ),
    ),
    ScreenSlides(
      'Quick and advanced support',
      'assets/images/l012e_4_e03 1.jpg',
      // SvgPicture.asset('assets/images/l012e_4_e03 1.svg'),
    ),
    ScreenSlides(
      'Access tools to guide your fertility journey',
      SvgPicture.asset(
        'assets/images/Fertility tools.svg',
        height: double.infinity,
      ),
    )
  ];

  CreateAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CreateAccountCubit(),
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.fromLTRB(0, 60, 0, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /* Image Slides with the texts */
              SliderContext(slides: images),
              /* Image Slide progress indicators */
              SliderProgress(slideLength: images.length),
              /* Buttons for the Create Account Screen */
              const CreateAccountButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
