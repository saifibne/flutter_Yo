import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../Screens/shared_screens/common_modal.dart';
import '../shared_widgets/full_elevated_btn.dart';
import '../shared_widgets/full_outlined_btn.dart';

class CreateAccountButtons extends StatelessWidget {
  const CreateAccountButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
          style:
              TextButton.styleFrom(fixedSize: const Size(double.infinity, 5)),
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
    );
  }
}
