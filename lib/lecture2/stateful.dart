import 'package:flutter/material.dart';

class StateFul extends StatefulWidget {
  StateFul({super.key});
  @override
  State<StateFul> createState() => _StateFulState();
}

class _StateFulState extends State<StateFul> {int count = 10;
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Provider Tutorial"),
      ),body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text(DateTime.now().toString()),
        Container(
          child: Center(
            child: Text(
              count.toString(),
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
      ],
    ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            count++;
            print(count);
            setState(() {

            });
          },
          backgroundColor: Colors.blue,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
    );
  }
}
