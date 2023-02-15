import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/create_account_cubit.dart';

class SliderProgress extends StatelessWidget {
  final int slideLength;

  const SliderProgress({Key? key, required this.slideLength}) : super(key: key);

  // Creating the Row's of dot widgets...
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
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      child: BlocBuilder<CreateAccountCubit, CreateAccountState>(
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators(
              context,
              slideLength,
              (state as CreateAccountInitial).activePage,
            ),
          );
        },
      ),
    );
  }
}
