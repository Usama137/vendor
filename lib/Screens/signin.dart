import 'package:flutter/material.dart';
import 'package:vendor/Components/rounded_button.dart';
import 'package:vendor/Components/rounded_google_button.dart';
import 'package:vendor/Components/tracking_text_input.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Signin extends StatefulWidget {
  static const String id = 'signin_screen';
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff129347),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0, top: 35),
                    child: Text(
                      'Log In.',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 47.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 70),
                    child: TrackingTextInput(
                      hint: "Email",
                      colour: Colors.white,
                      onTextChanged: (String value) {
                        email = value;
                      },
                    ),
                  ),

                  Padding(
                    padding:
                    const EdgeInsets.only(left: 40, right: 40, top: 30),
                    child: TrackingTextInput(
                      hint: "Password",

                      isObscured: true,

                      suffixIcon: Icon(Icons.remove_red_eye, color: Colors.white,

                      ),
                      colour: Colors.white,

                      onTextChanged: (String value) {
                        password = value;

                      },

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: RoundedButton(
                      title: 'Log In',
                      colour: Colors.white,
                      textColor: Color(0xff129347),

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      '- Or Sign up with -',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:75,right: 75, top: 20.0),
                    child: RoundedGoogleButton(
                      title: 'Google',
                      colour: Colors.white,
                      textColor: Color(0xff129347),
                    )
                  ),


                  Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child:InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, Signin.id);
                        },
                        child: Text(
                          'New User? Create account',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),
                        ),
                      )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
