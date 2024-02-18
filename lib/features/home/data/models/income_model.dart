import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class IncomeModel extends Equatable {
  final String? idIncome;
  final double inputIncome;
  final String? iconCategoryIncome;
  final DateTime dateIncome;
  final String? remarkIncome;

  const IncomeModel(
      {this.idIncome,
      required this.inputIncome,
      this.iconCategoryIncome,
      required this.dateIncome,
      this.remarkIncome});

  factory IncomeModel.fromFirestore(DocumentSnapshot snap) {
    return IncomeModel(
      idIncome: snap["idIncome"],
      inputIncome: snap["inputIncome"],
      dateIncome: DateTime.parse(snap['dateIncome']),
      iconCategoryIncome: snap["iconCategoryIncome"],
      remarkIncome: snap["remarkIncome"],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      "idIncome": idIncome,
      "inputIncome": inputIncome,
      "dateIncome": dateIncome.toIso8601String(),
      "iconCategoryIncome": iconCategoryIncome,
      "remarkIncome": remarkIncome,
    };
  }

  @override
  List<Object?> get props => [
        idIncome,
        inputIncome,
        dateIncome,
        iconCategoryIncome,
        remarkIncome,
      ];
}
