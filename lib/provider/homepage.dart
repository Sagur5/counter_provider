// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:counter_provider/provider/counter_provider.dart'; // Import your CounterProvider here

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is a counter App!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.orange[700],
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Consumer<CounterProvider>(
              builder: (context, value, child) {
                return Text(
                  "${value.count}",
                  style: TextStyle(fontSize: 40),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterProvider>().increase();
                  },
                  child: Text("Add"),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterProvider>().decrease();
                  },
                  child: Text("Sub"),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterProvider>().clear();
                  },
                  child: Text("Clear"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
