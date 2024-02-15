class UserModel {
  final String? userId;
  final String? name;
  final String? userImage;
  final String? email;
  final DateTime date;
  final double? totalExpense;
  final double? totalIncome;
  final double? totalAll;

  UserModel({
    this.userId,
    required this.name,
    required this.userImage,
    required this.email,
    required this.date,
    this.totalExpense,
    this.totalIncome,
    this.totalAll,
  });

  factory UserModel.fromFirestore(Map<String, dynamic> data) {
    return UserModel(
      userId: data["userId"],
      name: data["name"],
      email: data["email"],
      userImage: data["userImage"],
      date: DateTime.parse(data["date"]),
      totalExpense: data["totalExpense"],
      totalIncome: data["totalIncome"],
      totalAll: data["totalAll"],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      "userId": userId,
      "name": name,
      "email": email,
      "userImage": userImage,
      "date": date.toIso8601String(),
      "totalExpense": totalExpense,
      "totalIncome": totalIncome,
      "totalAll": totalAll,
    };
  }
}
