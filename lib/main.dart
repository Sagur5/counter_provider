// ignore_for_file: prefer_const_constructors

import 'package:counter_provider/provider/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:counter_provider/provider/counter_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MaterialApp(
        home: Homepage(),
      ),
    ),
  );
}
