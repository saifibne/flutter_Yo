import 'package:flutter/material.dart';

import '../../widgets/data_privacy/data_privacy_buttons.dart';
import '../../widgets/data_privacy/privacy_info.dart';

class DataPrivacyScreen extends StatelessWidget {
  const DataPrivacyScreen({Key? key}) : super(key: key);

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
              children: const [
                DataPrivacyInfo(),
                DataPrivacyButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
