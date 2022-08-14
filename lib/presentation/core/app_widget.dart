import 'package:flutter/material.dart';
import 'package:my_note_app/presentation/login/widgets/login_form.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginForm(),
    );
  }
}
