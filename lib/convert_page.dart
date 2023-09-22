import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  const Converter({super.key});

  @override
  State<Converter> createState() => _Converter();
}

class _Converter extends State<Converter> {
  double inputCurrency = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    setState(() {
      inputCurrency = double.parse(textEditingController.text) * 1000;
    });
  }

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
              Text(
                'USD ${inputCurrency.toString()}',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
              TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                    hintText: 'Enter the amount to convert currency in Rwf',
                    hintStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(style: BorderStyle.none))),
                keyboardType: const TextInputType.numberWithOptions(
                    decimal: true, signed: true),
              ),
              TextButton(
                onPressed: convert,
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
