import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Screens/onboard_screens/create_account.dart';
import '../../logic/create_account_cubit.dart';

class SliderContext extends StatelessWidget {
  final List<ScreenSlides> slides;

  const SliderContext({Key? key, required this.slides}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Builder(
        builder: (context) {
          return PageView.builder(
            itemCount: slides.length,
            pageSnapping: true,
            scrollDirection: Axis.horizontal,
            onPageChanged: (page) {
              context.read<CreateAccountCubit>().changePage(page);
            },
            itemBuilder: (context, pagePosition) {
              return Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        slides[pagePosition].title,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: slides[pagePosition].image is String
                          ? Image.asset('assets/images/l012e_4_e03 1.jpg')
                          : slides[pagePosition].image,
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
