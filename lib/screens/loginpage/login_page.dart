import 'package:flutter/material.dart';
import 'package:promilo/screens/loginpage/social_buttons.dart';
import 'package:promilo/screens/loginpage/text_button.dart';
import 'package:promilo/screens/loginpage/textfield.dart';

import '../../const.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //textpromilo
                  Text(
                    'promilo',
                    style: TextStyle(
                      color: Color(0xff0b0b0b),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  h60,
                  //text welcome
                  Text(
                    'Hi, Welcome Back!',
                    style: TextStyle(
                        color: Color(0xff002a40),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  h30,
                  //email
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      toptext('Please Sign In to continue'),
                      CurvedTextField(hintText: 'Enter Email or Mob No.'),
                      bottomtext('Sing In With OTP'),
                    ],
                  ),
                  h10,
                  //passwrord
                  toptext('Password'),
                  CurvedTextField(hintText: 'Enter Password'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      rememberMe(),
                      bottomtext('Forgot Password'),
                    ],
                  ),
                  h30,

                  //submit
                  SubmitButtton(submitText: 'Submit'),
                  h30,
                  //or
                  ornline(),
                  //social button
                  h30,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SociaButtons(
                          imagePath: 'asssets/images/google.png',
                          height: 35,
                          width: 35),
                      w10,
                      SociaButtons(
                          imagePath: 'asssets/images/linkedin.png',
                          height: 33,
                          width: 33),
                      w10,
                      SociaButtons(
                          imagePath: 'asssets/images/faceboook.png',
                          height: 48,
                          width: 48),
                      w10,
                      SociaButtons(
                          imagePath: 'asssets/images/instagram.jpg',
                          height: 38,
                          width: 38),
                      w10,
                      SociaButtons(
                          imagePath: 'asssets/images/whatsapp.png',
                          height: 56,
                          width: 56),
                    ],
                  ),

                  //login
                  h30,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      userAccount('Business User?'),
                      userAccount("Dont'have an account"),
                    ],
                  ),
                  h10,
                  loginSignup(),
                  h20,

                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'By continuing,you agree to\n',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                          ),
                        ),
                        TextSpan(
                          text: 'Promilos',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                          ),
                        ),
                        TextSpan(
                          text: ' Terms of Use & Privacy Policy.',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  )

                  //terms
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row loginSignup() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Login Here',
          style: TextStyle(
            color: Color(0xff237ba8),
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Sign Up',
          style: TextStyle(
            color: Color(0xff237ba8),
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Row userAccount(String text) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  Row ornline() {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.grey,
            height: 0.5,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text('or'),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Container(
            color: Colors.grey,
            height: 0.5,
          ),
        ),
      ],
    );
  }

  Row rememberMe() {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Colors.grey, width: 2),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'Remeber Me',
          style: TextStyle(color: Colors.black.withOpacity(0.5)),
        ),
      ],
    );
  }

  Row toptext(String toptext) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Text(
            toptext,
            style: TextStyle(
                color: Color(0xff2a5e7a),
                fontSize: 17,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }

  Row bottomtext(String textname) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Text(
            textname,
            style: TextStyle(
              color: Color(0xff237ba8),
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
