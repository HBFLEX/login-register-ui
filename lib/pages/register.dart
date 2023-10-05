import 'package:flutter/material.dart';
import 'package:login_register/pages/login.dart';
import 'package:login_register/widgets/login/bottom_text.dart';
import 'package:login_register/widgets/login/input_field.dart';
import 'package:login_register/widgets/login/submit_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                          child: Text('Create An Account',
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
                    inputField('Enter your full name', false),
                    inputField('Enter your email', false),
                    inputField('Enter your password', true),
                    inputField('Confirm your password', true),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const LoginPage();
                          }));
                        },
                        child: SubmitButton('Register')),
                  ])),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 25.0),
                    child: GestureDetector(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            },
                            child: bottomText('Login Here', 'left'))),
                  ),
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
