import 'package:chat_app/screens/Chat_Screen.dart';
import 'package:chat_app/screens/Registration_Screen.dart';
import 'package:chat_app/screens/Signin_Screen.dart';
import 'package:flutter/material.dart';
import 'screens/Welcomescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ChatScreen(),
      initialRoute: ChatScreen.screenRoute,
      routes: {
        WelcomeScreen.screenRoute: (context) => WelcomeScreen(),
        RegistrationScreen.screenRoute: (context) => RegistrationScreen(),
        SignInScreen.screenRoute: (context) => SignInScreen(),
        ChatScreen.screenRoute: (context) => ChatScreen()
      },
    );
  }
}
