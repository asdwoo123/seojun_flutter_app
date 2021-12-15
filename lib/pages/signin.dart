import 'package:flutter/material.dart';
import 'package:seojun_flutter_app/components/custom_checkbox.dart';
import 'package:seojun_flutter_app/components/custom_primary_button.dart';
import 'package:seojun_flutter_app/pages/signup.dart';

import '../theme.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool passwordVisible = false;
  bool remember = false;

  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        CustomCheckbox(),
                        SizedBox(
                          width: 12,
                        ),
                        Text('Remember me', style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),)
                      ],
                    ),
                    const SizedBox(
                      height: 32
                    ),
                    CustomPrimaryButton(
                      buttonColor: primaryBlue,
                      textValue: 'Login',
                      textColor: Colors.white
                    ),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUpPage())
                            );
                          },
                            child: Text(
                              'Create an SEOJUNAPP account',
                              style: heading6.copyWith(color: textPrimaryBlue)
                            ),
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

