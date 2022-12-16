import 'package:go_router/go_router.dart';
import 'package:yo_3/Screens/onboard_screens/create_account.dart';

import './Screens/onboard_screens/data_privacy.dart';
import './Screens/onboard_screens/service_terms.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ServiceTermScreen(),
    ),
    GoRoute(
      path: '/data-privacy',
      builder: (context, state) => const DataPrivacyScreen(),
    ),
    GoRoute(
      path: '/create-account',
      builder: (context, state) => CreateAccountScreen(),
    )
  ],
);
