import 'package:flutter/material.dart';
import 'package:welcome_signup_ui/components/action_button.dart';
import 'package:welcome_signup_ui/components/bordered_actionButton.dart';
import 'package:welcome_signup_ui/components/footer_image.dart';
import 'package:welcome_signup_ui/components/footer_info.dart';
import 'package:welcome_signup_ui/components/heading_info.dart';
import 'package:welcome_signup_ui/components/input_field.dart';
import 'package:welcome_signup_ui/components/top_nav.dart';
import 'package:welcome_signup_ui/constants.dart';
import 'package:welcome_signup_ui/screens/login_screen/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: kDefaultPadding * 1.5),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TopNav(
                      action: 'Login',
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogInScreen(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: size.height * 0.02),
                    HeadingInfo(
                      heading: 'Create account',
                      subHeading: 'Sign up and reserve a work station',
                    ),
                    SizedBox(height: size.height * 0.05),
                    InputField(
                      hintText: 'Enter your Email',
                      obscureText: false,
                    ),
                    SizedBox(height: 15.0),
                    InputField(
                      hintText: 'Password',
                      obscureText: true,
                    ),
                    SizedBox(height: size.height * 0.05),
                    ActionButton(
                      action: 'Sign Up',
                    ),
                    SizedBox(height: 25.0),
                    BorderedActionButton(
                      action: 'Continue with facebook',
                    ),
                    SizedBox(height: size.height * 0.03),
                    FooterInfo(),
                  ],
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            FooterImage(imgUrl: 'assets/images/office.jpg'),
          ],
        ),
      ),
    );
  }
}
