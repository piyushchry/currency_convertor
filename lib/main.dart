import 'package:currency_convertor/currency_convertor_material.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

// material Design
// Cupertion Design

// create our own widget
// Types of widgets
// 1. Stateless widget
// 2. Stateful widget

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CurrencyConvertorMaterialPage());
  }
}

// class MyCupertinoApp extends StatelessWidget {
//   const MyCupertinoApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const CupertinoApp(home: CurrencyConverterCupertinoPage());
//   }
// }
