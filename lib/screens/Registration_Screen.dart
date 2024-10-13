import 'package:flutter/material.dart';
import 'package:chat_app/widgets/Signup_Button.dart';

class RegistrationScreen extends StatefulWidget {
  static String screenRoute = 'RegistrationScreen';

  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late String email;
  late String password;
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
              child: Image.asset('lib/images/Logo_Signup.png'),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              onChanged: (value) {
                email = value;
              },
              decoration: InputDecoration(
                hintText: 'Enter Your Email',
                contentPadding:
                    EdgeInsets.only(left: 20, right: 20, bottom: 40),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            Container(
              height: 30,
            ),
            TextField(
              onChanged: (value) {
                password = value;
              },
              decoration: InputDecoration(
                hintText: 'Password',
                contentPadding:
                    EdgeInsets.only(left: 20, right: 20, bottom: 40),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Mybuttonssignup(onPressed: () {
              print(email);
              print(password);
            })
          ],
        ),
      ),
    );
  }
}

class Mybuttonssignup extends StatelessWidget {
  const Mybuttonssignup({Key? key, required this.onPressed}) : super(key: key);
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70, right: 70),
      child: Material(
        elevation: 5,
        color: Colors.blue[900],
        borderRadius: BorderRadius.circular(40),
        child: MaterialButton(
          onPressed: () => onPressed,
          minWidth: 200,
          height: 50,
          child: Text(
            'Sign Up',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
