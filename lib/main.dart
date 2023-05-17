import 'package:flutter/material.dart';

void main() => runApp(const Counter());

class Counter extends StatelessWidget{
  const Counter({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyCounterPage(),
    );
  }
}

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({Key? key}) : super(key: key);

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _counter = 0;

  void _increment(){
    setState(() {
      _counter++;
    });
  }

  void _decrement(){
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text('Counter'),
            centerTitle: true,
          ),
          body:  SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const Text('Counter',style: TextStyle(fontSize: 50, color: Colors.red)),
                     Text('$_counter',style: const TextStyle(fontSize: 50, color: Colors.red),),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(fixedSize: const Size(100, 100),shape: const CircleBorder()),
                        onPressed: _increment,
                        child: const Text('+',style:  TextStyle(fontSize:50),)),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(fixedSize: const Size(100, 100),shape: const CircleBorder()),
                        onPressed: _decrement,
                        child: const Text('-',style:  TextStyle(fontSize:50),)),

                  ],
                ),
              ],
            ),
          ),
    );
  }
}


















/*
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
*/
