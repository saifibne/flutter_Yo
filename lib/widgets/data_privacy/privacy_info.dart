import 'package:flutter/material.dart';

import '../shared_widgets/hyperlink.dart';

class DataPrivacyInfo extends StatelessWidget {
  const DataPrivacyInfo({Key? key}) : super(key: key);

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
    return Column(
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
                    text: 'By selecting \'I Accept\', you agree to the ',
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
    );
  }
}
