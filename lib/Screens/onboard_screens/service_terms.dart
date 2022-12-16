import 'package:flutter/material.dart';

import '../../widgets/service_terms/service_terms_buttons.dart';
import '../../widgets/service_terms/service_terms_info.dart';

class ServiceTermScreen extends StatelessWidget {
  const ServiceTermScreen({Key? key}) : super(key: key);

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
                ServiceTermsInfo(),
                ServiceTermsButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
