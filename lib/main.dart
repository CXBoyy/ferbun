// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fêrbûn',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fêrbûn'),
        ),
        body: Stack(
          alignment: Alignment.centerLeft,
          children: const [
            Main(),
          ],
        ),
      ),
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  void _pushAlphabet() {}

  void _pushNumbers() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: _pushAlphabet,
                child: const Text(
                  "Alfabe",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: _pushNumbers,
                child: const Text(
                  "Hijmar",
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Alphabet extends StatefulWidget {
  const Alphabet({Key? key}) : super(key: key);

  @override
  State<Alphabet> createState() => _AlphabetState();
}

class _AlphabetState extends State<Alphabet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold()
  }
}
