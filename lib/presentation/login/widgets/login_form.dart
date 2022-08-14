import 'package:flutter/material.dart';
import 'package:my_note_app/presentation/utils/sized_box_helper.dart';
import 'package:my_note_app/theme/custom_theme.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget emailField() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: secondaryTextStyle.copyWith(
              fontSize: fontSizeTextL,
              fontWeight: FontWeight.w600,
            ),
          ),
          VerticalSpace(size: 12),
          Container(
            height: 48,
            decoration: BoxDecoration(
              color: neutralColor10,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                HorizontalSpace(
                  size: 12,
                ),
                Expanded(
                  child: TextFormField(
                    // controller: emailController,
                    style: primaryTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: const InputDecoration.collapsed(
                      hintText: "Email Address",
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      );
    }

    Widget passwordField() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
            style: secondaryTextStyle.copyWith(
              fontSize: fontSizeTextL,
              fontWeight: FontWeight.w600,
            ),
          ),
          VerticalSpace(
            size: 12,
          ),
          Container(
            height: 48,
            decoration: BoxDecoration(
              color: neutralColor10,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                HorizontalSpace(
                  size: 12,
                ),
                Expanded(
                  child: TextFormField(
                    style: primaryTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: const InputDecoration(
                      hintText: "Password",
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      );
    }

    Widget loginButton() {
      return SizedBox(
        height: 46,
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            // TODO Handle login here...
          },
          child: Text(
            "Login",
            style: secondaryTextStyle.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: fontSizeTextM,
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: mainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      );
    }

    Widget loginWithGoogleButton() {
      return SizedBox(
        height: 46,
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            // TODO Handle login with Google here...
          },
          style: TextButton.styleFrom(
            backgroundColor: neutralColor10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage("assets/icons/icon-google.png"),
                width: 20,
              ),
              HorizontalSpace(size: 8),
              Text(
                "Login with Google",
                style: primaryTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        emailField(),
        VerticalSpace(size: 18),
        passwordField(),
        VerticalSpace(size: 12),
        Text(
          "Forgot your password?",
          style: linkTextStyle.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        VerticalSpace(size: 70),
        loginButton(),
        VerticalSpace(size: 24),
        loginWithGoogleButton(),
      ],
    );
  }
}
