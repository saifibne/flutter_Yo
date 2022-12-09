import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/full_elevated_btn.dart';
import '../widgets/full_outlined_btn.dart';
import '../widgets/hyperlink.dart';

class DataPrivacyScreen extends StatelessWidget {
  const DataPrivacyScreen({Key? key}) : super(key: key);

  Widget normalText(BuildContext ctx, String value) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Text(
        value,
        style: Theme.of(ctx).textTheme.bodyMedium,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Container(
            padding: const EdgeInsets.fromLTRB(25, 60, 25, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Data Privacy Policy',
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    normalText(context,
                        'The YO App collects the information provided when creating a profile, your internet connection details, and your communication preferences. Accepting our data privacy policy is required in order for YO to analyze your test results.'),
                    normalText(context,
                        'Visit the settings menu to control exactly what information you share with YO.'),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text:
                                    'By selecting \'I Accept\', you agree to the ',
                                style: Theme.of(context).textTheme.bodyMedium),
                            hyperLink(context, 'Data Privacy Policy', () {}),
                            TextSpan(
                                text: ' of YO.',
                                style: Theme.of(context).textTheme.bodyMedium),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: FullElevatedButton(
                        buttonText: 'I Accept',
                        callbackFn: () => context.go('/create-account'),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
