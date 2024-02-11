import 'package:expense_master/core/functions/all_methods_initial.dart';
import 'package:expense_master/expense_master_app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await allMethodsToInitial();
  runApp(const ExpenseMasterApp());
}
