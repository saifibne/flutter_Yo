import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yo_3/Screens/common_modal.dart';

import '../widgets/full_elevated_btn.dart';
import '../widgets/full_outlined_btn.dart';
import '../widgets/slider-context.dart';
import '../logic/create_account_cubit.dart';

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

  List<Widget> indicators(BuildContext ctx, int length, int activeIndex) {
    return List<Widget>.generate(length, (index) {
      return Container(
        margin: const EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: index == activeIndex
              ? Theme.of(ctx).primaryColor
              : Colors.black12,
        ),
      );
    });
  }

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
              Expanded(
                flex: 1,
                child: Builder(builder: (context) {
                  return PageView.builder(
                    itemCount: images.length,
                    pageSnapping: true,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (page) {
                      context.read<CreateAccountCubit>().changePage(page);
                    },
                    itemBuilder: (context, pagePosition) {
                      return SliderContext(
                        title: images[pagePosition].title,
                        image: images[pagePosition].image,
                      );
                    },
                  );
                }),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 25),
                child: BlocBuilder<CreateAccountCubit, int>(
                  builder: (context, state) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: indicators(context, images.length, state),
                    );
                  },
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 20),
                    child: FullElevatedButton(
                      buttonText: 'Create Account',
                      callbackFn: () => context.go('/'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: FullOutlinedButton(
                      buttonText: 'Login',
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      CommonModal(
                        context,
                        image: SvgPicture.asset('assets/images/Alert.svg'),
                        modalTitle: 'Guest Login',
                        modalText:
                            'Creating an account allows YO to archive your results, gives you access to discounts and promotions, and improvise our ability to provide effective customer support.',
                        buttons: [
                          FullElevatedButton(
                            buttonText: 'Create Account',
                            callbackFn: () {},
                          ),
                          const FullOutlinedButton(
                            buttonText: 'Continue As Guest',
                          ),
                        ],
                      ).open();
                    },
                    style: TextButton.styleFrom(
                        fixedSize: const Size(double.infinity, 5)),
                    child: const Text('Guest Login'),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Powered by MES 2022',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Outline',
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
