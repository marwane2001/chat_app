// import 'package:chatapp/widgets/My_Button.dart';
import 'package:chat_app/widgets/SignIn_Button.dart';
// import 'package:chatapp/widgets/Signup_Button.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  static String screenRoute = 'SignInScreen';
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 100,
              child: Image.asset('lib/images/Logo_Login.png'),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                hintText: 'Enter Your Email',
                contentPadding:
                    EdgeInsets.only(left: 20, right: 20, bottom: 40),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            Container(
              height: 30,
            ),
            TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                hintText: 'Enter Your Password',
                contentPadding:
                    EdgeInsets.only(left: 20, right: 20, bottom: 40),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Mybuttonssignin()
          ],
        ),
      ),
    );
  }
}
