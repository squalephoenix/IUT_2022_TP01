import 'package:flutter/material.dart';

class MyHelloWorldPage extends StatefulWidget {
  const MyHelloWorldPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHelloWorldPage> createState() => _MyHelloWorldPageState();
}

class _MyHelloWorldPageState extends State<MyHelloWorldPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'HelloWorld',
            ),
          ],
        ),
      ),
    );
  }
}