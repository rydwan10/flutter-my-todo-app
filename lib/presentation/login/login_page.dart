import 'package:flutter/material.dart';
import 'package:my_note_app/presentation/login/widgets/login_form.dart';
import 'package:my_note_app/presentation/utils/sized_box_helper.dart';
import 'package:my_note_app/theme/custom_theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headerTitle() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "DailyTo",
            style: headingTextStyle.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 28,
            ),
          ),
          Text(
            "Do",
            style: headingTextStyle.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 28,
              color: mainColor,
            ),
          )
        ],
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/backgrounds/bg-login.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            VerticalSpace(size: 100),
            headerTitle(),
            VerticalSpace(size: 70),
            const LoginForm(),
            VerticalSpace(size: 36),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Didn't have any account yet? ",
                    style: secondaryTextStyle),
                Text(
                  "Register",
                  style: linkTextStyle.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
