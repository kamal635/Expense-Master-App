import 'package:expense_master/core/Strings/app_strings.dart';
import 'package:expense_master/core/widgets/app_button.dart';
import 'package:flutter/material.dart';

class ButtonOnBordingView extends StatelessWidget {
  const ButtonOnBordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      titleWithImage: true,
      title: AppString.continueGoogle,
      onPressed: () {},
    );
  }
}
