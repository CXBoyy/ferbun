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
  void _pushAlphabet() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) {
          return const Alphabet();
        },
      ),
    );
  }

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
  final _alphabet = [
    "Aa",
    "Bb",
    "Cc",
    "Çç",
    "Dd",
    "Ee",
    "Êê",
    "Ff",
    "Gg",
    "Hh",
    "Ii",
    "Îî",
    "Jj",
    "Kk",
    "Ll",
    "Mm",
    "Nn",
    "Oo",
    "Pp",
    "Qq",
    "Rr",
    "Ss",
    "Şş",
    "Tt",
    "Uu",
    "Ûû",
    "Vv",
    "Ww",
    "Xx",
    "Yy",
    "Zz",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alfabeya Kurdî"),
      ),
      body: GridView.count(
        crossAxisCount: 8,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 50,
        mainAxisSpacing: 100,
        children: List.generate(
          (_alphabet.length - 1),
          (index) {
            const SizedBox(height: 30);
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                      child: Text(_alphabet[index]),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
