import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  static String screenRoute = 'ChatScreen';

  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Row(children: [
          Image.asset(
            'lib/images/Logo.png',
            height: 25,
          ),
          SizedBox(
            width: 8,
          ),
          Title(
              color: Colors.black,
              child: Text(
                ' Reactive Chat',
                style: TextStyle(fontWeight: FontWeight.w900),
              ))
        ]),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.close))],
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(),
          Container(
            decoration: BoxDecoration(
                border:
                    Border(top: BorderSide(color: Colors.orange, width: 2))),
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Expanded(
                  child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    hintText: 'Write Your Message....',
                    border: InputBorder.none),
              )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Send',
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ))
            ]),
          ),
        ],
      )),
    );
  }
}
