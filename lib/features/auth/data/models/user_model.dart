import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String? userId;
  final String? name;
  final String? userImage;
  final String? email;
  final DateTime date;
  final double? totalExpense;
  final double? totalIncome;
  final double? totalAll;

  const UserModel({
    this.userId,
    required this.name,
    required this.userImage,
    required this.email,
    required this.date,
    this.totalExpense,
    this.totalIncome,
    this.totalAll,
  });

  factory UserModel.fromFirestore(DocumentSnapshot snap) {
    return UserModel(
      userId: snap.id,
      name: snap["name"],
      email: snap["email"],
      userImage: snap["userImage"],
      date: DateTime.parse(snap["date"]),
      totalExpense: snap["totalExpense"],
      totalIncome: snap["totalIncome"],
      totalAll: snap["totalAll"],
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

  @override
  List<Object?> get props => [
        userId,
        name,
        email,
        userImage,
        date,
        totalAll,
        totalExpense,
        totalIncome,
      ];
}
