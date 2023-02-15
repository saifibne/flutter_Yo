import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../logic/create_account_cubit.dart';
import '../../widgets/shared_widgets/full_elevated_btn.dart';
import '../../widgets/shared_widgets/full_outlined_btn.dart';

class TriviaStartScreen extends StatefulWidget {
  const TriviaStartScreen({Key? key}) : super(key: key);

  @override
  State<TriviaStartScreen> createState() => _TriviaStartScreenState();
}

class _TriviaStartScreenState extends State<TriviaStartScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CreateAccountCubit>().startCounter();
  }

  String convertTime(int seconds) {
    var second = (seconds % 60).toString().padLeft(2, '0');
    var minute = ((seconds / 60).floor()).toString().padLeft(2, '0');

    return '$minute : $second';
  }

  double getProgress(int seconds) {
    var value = ((600 - seconds) / 600).toDouble();
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xfffaf6f1),
                  Color.fromRGBO(250, 246, 241, 0.1),
                ],
                stops: [0, 100],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 60, 25, 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'assets/images/Logo small.jpg',
                          height: 60,
                        ),
                      ),
                    ),
                    Text(
                      'Trivia Challenge',
                      style: Theme.of(context).textTheme.titleSmall,
                    )
                  ],
                ),
              ),
              BlocBuilder<CreateAccountCubit, CreateAccountState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      LinearProgressIndicator(
                        minHeight: 5,
                        backgroundColor: Colors.transparent,
                        valueColor: AlwaysStoppedAnimation<Color>(
                            Theme.of(context).primaryColor),
                        value: getProgress(
                            (state as CreateAccountInitial).timeLeft),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 25, bottom: 30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(7, 10),
                                color: Color.fromRGBO(0, 0, 0, 0.01),
                                blurRadius: 20),
                          ],
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 24),
                        child: Text(
                          convertTime((state).timeLeft),
                          style: const TextStyle(
                              fontSize: 30,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w500,
                              height: 1.2),
                        ),
                      ),
                    ],
                  );
                },
              ),
              const Text("While you're waiting, try the..."),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 20),
                // child: SvgPicture.asset(
                //   'assets/images/mes_icon.svg',
                //   height: 80,
                //   // color: Colors.transparent,
                // ),
                child: Image.asset(
                  'assets/images/Mes_icon.png',
                  height: 80,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'YO Sperm Trivia Challenge',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: FullOutlinedButton(
                        buttonText: 'Skip',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: FullElevatedButton(
                        buttonText: 'Start Trivia',
                        callbackFn: () => context.go('/create-account'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
