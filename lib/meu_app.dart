import 'package:flutter/material.dart';
import 'package:moneytalks/pages/home_page.dart';
import 'package:moneytalks/pages/moedas_page.dart';

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moneytalks',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: HomePage(),
    );
  }
}
