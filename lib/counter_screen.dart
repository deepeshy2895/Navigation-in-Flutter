import 'package:flutter/material.dart';

void main() {
  runApp(const CounterScreen());
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => CounterScreenState();
}

class CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              title: Text(
                "App Bar ",
              ),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "$counter",
                    style: TextStyle(fontSize: 50),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                      child: Icon(Icons.add)),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          counter--;
                        });
                      },
                      child: Icon(Icons.remove))
                ],
              ),
            )));
  }
}
