class ExpenseModel {
  final String? idExpense;
  final double inputExpense;
  final String? iconCategoryExpense;
  final DateTime dateExpense;
  final String? remarkExpense;

  ExpenseModel(
      {this.idExpense,
      required this.inputExpense,
      this.iconCategoryExpense,
      required this.dateExpense,
      this.remarkExpense});

  factory ExpenseModel.fromFirestore(Map<String, dynamic> data) {
    return ExpenseModel(
      idExpense: data["idExpense"],
      inputExpense: data["inputExpense"],
      dateExpense: DateTime.parse(data['dateExpense']),
      iconCategoryExpense: data["iconCategoryExpense"],
      remarkExpense: data["remarkExpense"],
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
}
