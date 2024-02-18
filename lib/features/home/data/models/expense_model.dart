import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class ExpenseModel extends Equatable {
  final String? idExpense;
  final double inputExpense;
  final String? iconCategoryExpense;
  final DateTime dateExpense;
  final String? remarkExpense;

  const ExpenseModel(
      {this.idExpense,
      required this.inputExpense,
      this.iconCategoryExpense,
      required this.dateExpense,
      this.remarkExpense});

  factory ExpenseModel.fromFirestore(DocumentSnapshot snap) {
    return ExpenseModel(
      idExpense: snap["idExpense"],
      inputExpense: snap["inputExpense"],
      dateExpense: DateTime.parse(snap['dateExpense']),
      iconCategoryExpense: snap["iconCategoryExpense"],
      remarkExpense: snap["remarkExpense"],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      "idExpense": idExpense,
      "inputExpense": inputExpense,
      "dateExpense": dateExpense.toIso8601String(),
      "iconCategoryExpense": iconCategoryExpense,
      "remarkExpense": remarkExpense,
    };
  }

  @override
  List<Object?> get props => [
        idExpense,
        inputExpense,
        dateExpense,
        iconCategoryExpense,
        remarkExpense,
      ];
}
