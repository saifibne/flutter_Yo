import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../shared_widgets/full_elevated_btn.dart';
import '../shared_widgets/full_outlined_btn.dart';

class ServiceTermsButtons extends StatelessWidget {
  const ServiceTermsButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: FullElevatedButton(
            buttonText: 'I Accept',
            callbackFn: () => context.go('/data-privacy'),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: FullOutlinedButton(
            buttonText: 'Contact Support',
          ),
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
