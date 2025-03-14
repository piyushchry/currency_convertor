// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConvertorMaterialPage extends StatefulWidget {
  const CurrencyConvertorMaterialPage({super.key});

  @override
  State<CurrencyConvertorMaterialPage> createState() =>
      _CurrencyConvertorMaterialPageState();
}

class _CurrencyConvertorMaterialPageState
    extends State<CurrencyConvertorMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print('rebuilt');
    final border = OutlineInputBorder(
      // color(0xAARRGGBB)
      borderSide: BorderSide(
        color: Colors.grey,
        width: 4,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(25)),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text(
          'Currency Convertor',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // int -> string  integervalue.toString()
            // string -> int  int.parse(stringvalue)
            // string -> double  double.parse(stringvalue)
            Text(
              'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(232, 245, 244, 244),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Enter amount in USD',
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            // Button

            // raised button
            // Text button
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 86.95;
                  });
                },
                style: TextButton.styleFrom(
                  elevation: 20,
                  backgroundColor: Color.fromARGB(97, 26, 52, 72),
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
