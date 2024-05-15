import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reivit/widgets/app_spinner.dart';

import 'constants.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(children: [
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: ConstrainedBox(
                constraints:
                    const BoxConstraints(maxWidth: 1000, minWidth: 800),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: AppColors.surfaceElevated,
                  child: const Text('Sign up',
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                ),
              ),
            ),
          ]),
    ]));
  }
}
