import 'package:flutter/material.dart';
import 'package:login_register/pages/forgot_password.dart';
import 'package:login_register/pages/home.dart';
import 'package:login_register/pages/register.dart';
import 'package:login_register/widgets/login/bottom_text.dart';
import 'package:login_register/widgets/login/input_field.dart';
import 'package:login_register/widgets/login/submit_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Column(children: <Widget>[
              Container(
                  height: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.fill,
                  )),
                  child: const Stack(children: <Widget>[
                    Positioned(
                      child: Center(
                          child: Text('Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold))),
                    )
                  ])),
              Container(
                  margin: const EdgeInsets.all(20.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          blurRadius: 20.0,
                          offset: Offset(0.0, 10.0),
                        ),
                      ]),
                  child: Column(children: <Widget>[
                    inputField('Enter your email address', false),
                    inputField('Enter your password', true),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const HomePage();
                          }));
                        },
                        child: SubmitButton('Login')),
                  ])),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const ForgotPassword();
                        }));
                      },
                      child: bottomText('Forgot Password', 'left')),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterPage(),
                            ));
                      },
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterPage()));
                          },
                          child: bottomText('Sign Up', 'right'))),
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
