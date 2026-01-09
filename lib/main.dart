import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Counter(),
    );
  }
}

class Counter extends StatefulWidget {
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    counter = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
        ));
  }
  @override
  void dispose() {
    super.dispose();
  }
}


























// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:testapp/counterController.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   final CounterController controller = Get.put(CounterController());
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text("GetX State Management"),
//           ),
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Obx(() => Text(
//                       "${controller.count}",
//                       style: TextStyle(fontSize: 50),
//                     )),
//                 const SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     IconButton(
//                       onPressed: controller.increase,
//                       icon: Icon(Icons.add),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     IconButton(
//                       onPressed: controller.decrease,
//                       icon: Icon(Icons.remove),
//                     )
//                   ],
//                 )
//               ],
//             ),
//           )),
//     );
//   }
// }
