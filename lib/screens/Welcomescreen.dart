import 'package:chat_app/screens/Registration_Screen.dart';
import 'package:chat_app/screens/Signin_Screen.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/widgets/My_Button.dart';

class WelcomeScreen extends StatefulWidget {
  static String screenRoute =
      'welcome_screen'; //when adding const there will be no need to get the whole page so that will make the page to laod faster
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                child: Image.asset(
              'lib/images/Logo.png',
              height: 100,
              width: 100,
            )),
            // Adjust this value as needed
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Reactive ',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                ),
                Text(
                  'Chat',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 40,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Mybuttons(
              color: Colors.yellow[900]!,
              onPressed: () {
                Navigator.pushNamed(context, SignInScreen.screenRoute);
              },
              title: 'Sign In',
            ),
            SizedBox(
              height: 20,
            ),
            Mybuttons(
              color: Colors.black!,
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.screenRoute);
              },
              title: 'Sign Up',
            )
          ],
        ),
      ),
    );
  }
}
