import 'package:flutter/material.dart';
import 'package:tp1/MyHelloWorldPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    _counter >= 10 ? Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHelloWorldPage(title: 'Flutter Hello World'))) : null;

  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 4),
            const Text(
              'Counter',
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
                Spacer(),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Spacer(),
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                Spacer(),
              ],
            ),
            Spacer(flex: 4,),
          ],
        ),
      ),
    );
  }
}