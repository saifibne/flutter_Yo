import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yo_3/Screens/home/home.dart';
import 'package:yo_3/Screens/onboard_screens/create_account.dart';
import 'package:yo_3/Screens/trivia_challange_screens/trivia_start.dart';
import 'package:yo_3/logic/create_account_cubit.dart';

import './Screens/onboard_screens/data_privacy.dart';
import './Screens/onboard_screens/service_terms.dart';

CreateAccountCubit createAccountState = CreateAccountCubit();

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
      builder: (context, state) => BlocProvider.value(
        value: createAccountState,
        child: CreateAccountScreen(),
      ),
    ),
    GoRoute(
      path: '/trivia-challenge',
      builder: (context, state) => BlocProvider.value(
        value: createAccountState,
        child: const TriviaStartScreen(),
      ),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    )
  ],
);
