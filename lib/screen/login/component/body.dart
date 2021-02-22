import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screen/login/component/already_acount.dart';
import 'package:flutter_kepegawaian/screen/login/component/background.dart';
import 'package:flutter_kepegawaian/screen/login/component/rounded_button.dart';
import 'package:flutter_kepegawaian/screen/login/component/rounded_input_field.dart';
import 'package:flutter_kepegawaian/screen/login/component/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/icon/healthcare.png",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "NO. Rekam Medik",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
