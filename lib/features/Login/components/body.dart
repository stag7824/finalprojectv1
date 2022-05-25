import 'package:finalprojectv1/Features/Login/loginscreen.dart';
import 'package:finalprojectv1/components/rounded_button.dart';
import 'package:finalprojectv1/components/rounded_input_field.dart';
import 'package:finalprojectv1/components/rounded_password_field.dart';
import 'package:finalprojectv1/features/Login/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Quiz/components/bodySelection.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
              isHiddenPassword: true,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BodySelection(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
