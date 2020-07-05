import 'package:flutter/material.dart';
import 'package:welcome_signup_ui/components/action_button.dart';
import 'package:welcome_signup_ui/components/heading_info.dart';
import 'package:welcome_signup_ui/components/input_field.dart';
import 'package:welcome_signup_ui/components/top_nav.dart';
import 'package:welcome_signup_ui/constants.dart';
import 'package:welcome_signup_ui/screens/signup_screen/signup_screen.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    bool isSwitched = true;
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
                      action: 'Sign Up',
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                    ),
                    HeadingInfo(
                      heading: 'Welcome back',
                      subHeading: 'Log back into your account',
                    ),
                    SizedBox(height: size.height * 0.05),
                    InputField(
                      hintText: 'Your Email',
                      obscureText: false,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    InputField(
                      hintText: 'Password',
                      obscureText: true,
                    ),
                    SizedBox(height: size.height * 0.03),
                    Row(
                      children: <Widget>[
                        /***I've had issues with this Switch Toggle button, Which wasn't working at the time of this commit, but the UI implementation was a success ;> ***/
                        Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                              print(isSwitched);
                            });
                          },
                          activeColor: kPrimaryColor,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Remember',
                          style: TextStyle(color: kTextColor, fontSize: 18.0),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Forgort?',
                              style:
                                  TextStyle(color: kTextColor, fontSize: 18.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.05),
                    ActionButton(
                      action: 'Log in',
                    ),
                    SizedBox(height: size.height * 0.05),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/desk.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
