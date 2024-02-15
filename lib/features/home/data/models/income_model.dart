class IncomeModel {
  final String? idIncome;
  final double inputIncome;
  final String? iconCategoryIncome;
  final DateTime dateIncome;
  final String? remarkIncome;

  IncomeModel(
      {this.idIncome,
      required this.inputIncome,
      this.iconCategoryIncome,
      required this.dateIncome,
      this.remarkIncome});

  factory IncomeModel.fromFirestore(Map<String, dynamic> data) {
    return IncomeModel(
      idIncome: data["idIncome"],
      inputIncome: data["inputIncome"],
      dateIncome: DateTime.parse(data['dateIncome']),
      iconCategoryIncome: data["iconCategoryIncome"],
      remarkIncome: data["remarkIncome"],
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
}
