import 'package:flutter/material.dart';
import 'package:e_home/shared_components/rounded_input_field.dart';
import 'package:e_home/shared_components/rounded_password_field.dart';
import 'package:e_home/shared_components/rounded_button.dart';
import 'package:e_home/shared_components/already_have_account_check.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This size provides us total height and width of our screen
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Column(
        children: [
          Container(
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Let\'s sign you in.',
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontFamily: 'Montserrat',
                    fontSize: size.height * 0.032,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Welcome back.\nYou’ve been missed!',
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontFamily: 'Montserrat',
                    fontSize: size.height * 0.032,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          RoundedInputField(
            hintText: 'Your Email',
            icon: Icons.person,
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            hintText: 'Your Password',
            onChanged: (value) {},
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          RoundedButton(
            text: 'SIGN IN',
            press: () {},
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          AlreadyHaveAccountCheck(),
        ],
      ),
    );
  }
}