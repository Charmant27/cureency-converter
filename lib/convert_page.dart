import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Converter extends StatelessWidget {
  const Converter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text(
            'Rwf to USD Converter',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 0, 85, 212),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                '0',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: 'Enter the amount to convert currency',
                    hintStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(style: BorderStyle.none))),
                keyboardType: TextInputType.numberWithOptions(
                    decimal: true, signed: true),
              ),
              TextButton(
                onPressed: () {
                  if (kDebugMode) {
                    print('Pressed');
                  }
                },
                style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 85, 212),
                    padding: const EdgeInsets.all(10)),
                child: const Text(
                  'Convert the currency',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ]),
          ),
        ));
  }
}
