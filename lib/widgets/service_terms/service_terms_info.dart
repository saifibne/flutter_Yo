import 'package:flutter/material.dart';

import '../shared_widgets/hyperlink.dart';

class ServiceTermsInfo extends StatelessWidget {
  const ServiceTermsInfo({Key? key}) : super(key: key);

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
            'Yo Home Sperm Test Kit',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        normalText(context,
            'The YO app is licensed for the sole purpose of testing your sample on the provided YO device.'),
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: 'By selecting \'I Accept\', you agree to the ',
                    style: Theme.of(context).textTheme.bodyMedium),
                hyperLink(context, 'Terms', () {}),
                TextSpan(
                    text: ' and ',
                    style: Theme.of(context).textTheme.bodyMedium),
                hyperLink(context, 'Conditions', () {}),
                TextSpan(
                    text: ' of YO.',
                    style: Theme.of(context).textTheme.bodyMedium)
              ],
            ),
          ),
        )
      ],
    );
  }
}
