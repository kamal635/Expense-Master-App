import 'package:flutter/material.dart';

class ExpenseMasterApp extends StatelessWidget {
  const ExpenseMasterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: As(),
    );
  }
}

class As extends StatelessWidget {
  const As({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
