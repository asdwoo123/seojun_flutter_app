import 'package:flutter/material.dart';
import 'package:seojun_flutter_app/components/custom_checkbox.dart';
import 'package:seojun_flutter_app/components/custom_primary_button.dart';

import '../theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool passwordVisible = false;
  bool confirmPasswordVisible = false;

  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  void toggleConfirmPassword() {
    setState(() {
      confirmPasswordVisible = !confirmPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 70, 20, 0),
          child: Column(
            children: <Widget>[
              const Center(
                child: Text('SEOJUNAPP',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    )),
              ),
              const SizedBox(
                height: 50,
              ),
              Form(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: textWhiteGrey,
                          borderRadius: BorderRadius.circular(14.0)),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: textWhiteGrey,
                          borderRadius: BorderRadius.circular(14.0)),
                      child: TextFormField(
                        obscureText: !passwordVisible,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: heading6.copyWith(color: textGrey),
                          suffixIcon: IconButton(
                            color: textGrey,
                            splashRadius: 1,
                            icon: Icon(passwordVisible
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined),
                            onPressed: togglePassword,
                          ),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: textWhiteGrey,
                          borderRadius: BorderRadius.circular(14.0)),
                      child: TextFormField(
                        obscureText: !passwordVisible,
                        decoration: InputDecoration(
                          hintText: 'Confirm password',
                          hintStyle: heading6.copyWith(color: textGrey),
                          suffixIcon: IconButton(
                            color: textGrey,
                            splashRadius: 1,
                            icon: Icon(passwordVisible
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined),
                            onPressed: togglePassword,
                          ),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        CustomCheckbox(),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'I agree with terms and conditions',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 32),
                    CustomPrimaryButton(
                        buttonColor: primaryBlue,
                        textValue: 'Sign Up',
                        textColor: Colors.white),
                    const SizedBox(
                      height: 36,
                    ),
                    Column(
                      children: <Widget>[
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              print('Hello World!');
                            },
                            child: Text(
                              'Forgot password',
                              style: heading6.copyWith(color: textGrey2),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text('Already have an account? Sign in',
                                style:
                                    heading6.copyWith(color: textPrimaryBlue)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
