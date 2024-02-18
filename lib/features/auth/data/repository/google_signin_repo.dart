import 'package:expense_master/core/error/firebase_error.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import "package:dartz/dartz.dart";

abstract class GoogleSignInRepo {
  Future<Either<ErrorHandle, UserCredential?>> signInWithGoogle();
  // reload current user to get any changes made
  Future<Either<ErrorHandle, Unit>> reloadCurrentUser();
}

// Implements All method in Google sign in repo
class GoogleSignInRepoImpl implements GoogleSignInRepo {
  final FirebaseAuth _firebaseAuth;

  GoogleSignInRepoImpl({FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  // 1-
  @override
  Future<Either<ErrorHandle, UserCredential?>> signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      return right(await _firebaseAuth.signInWithCredential(credential));
    } catch (e) {
      return methodHandleErrorExceptions(e);
    }
  }

  // 2-
  @override
  Future<Either<ErrorHandle, Unit>> reloadCurrentUser() async {
    try {
      await _firebaseAuth.currentUser?.reload();
      return right(unit);
    } catch (e) {
      return methodHandleErrorExceptions(e);
    }
  }
}
// Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           AppButton(
//               title: "Add User",
//               onPressed: () async {
//                 FirebaseFirestore firestore = FirebaseFirestore.instance;
//                 FirebaseAuth firebaseAuth = FirebaseAuth.instance;

//                 User? user = firebaseAuth.currentUser;

//                 DateTime now = DateTime.now();

//                 UserModel userModel = UserModel(
//                   userId: user?.uid,
//                   email: user?.email,
//                   name: user?.displayName,
//                   userImage: user?.photoURL,
//                   date: now,
//                 );
//                 //Set user:
//                 
//               }),
//           spaceheight(10),
//           AppButton(
//               title: "Income",
//               onPressed: () async {
//                 FirebaseFirestore firestore = FirebaseFirestore.instance;
//                 FirebaseAuth firebaseAuth = FirebaseAuth.instance;

//                 User? user = firebaseAuth.currentUser;
//                 String uuid = const Uuid().v4();
//                 DateTime now = DateTime.now();
//                 String year = "2025";
//                 String month = "3";
//                 String day = "20";

//                 IncomeModel incomeModel = IncomeModel(
//                   inputIncome: 50,
//                   dateIncome: now,
//                   iconCategoryIncome: "Home",
//                   idIncome: uuid,
//                   remarkIncome: "buy",
//                 );

//                 // Set Income:
//                 await firestore
//                     .collection("users")
//                     .doc(user?.uid)
//                     .collection("Income")
//                     .doc(uuid)
//                     .set(incomeModel.toFirestore());

//                 // Set Income by Date:
//                 await firestore
//                     .collection("users")
//                     .doc(user?.uid)
//                     .collection("Income by date")
//                     .doc(user?.uid)
//                     .collection("years")
//                     .doc(year)
//                     .collection("months")
//                     .doc(month)
//                     .collection("days")
//                     .doc(day)
//                     .collection("Income")
//                     .doc(uuid)
//                     .set(incomeModel.toFirestore());
//               }),
//           spaceheight(10),
//           AppButton(
//               title: "Expense",
//               onPressed: () async {
//                 FirebaseFirestore firestore = FirebaseFirestore.instance;
//                 FirebaseAuth firebaseAuth = FirebaseAuth.instance;

//                 User? user = firebaseAuth.currentUser;
//                 String uuid = const Uuid().v4();
//                 DateTime now = DateTime.now();
//                 String year = now.year.toString();
//                 String month = now.month.toString();
//                 String day = now.day.toString();

//                 ExpenseModel expenseModel = ExpenseModel(
//                   inputExpense: 20,
//                   dateExpense: now,
//                   iconCategoryExpense: "food",
//                   idExpense: uuid,
//                   remarkExpense: "pizza",
//                 );

//                 // Set Expense:
//                 await firestore
//                     .collection("users")
//                     .doc(user?.uid)
//                     .collection("expense")
//                     .doc(uuid)
//                     .set(expenseModel.toFirestore());

//                 // Set Expense by Date:
//                 await firestore
//                     .collection("users")
//                     .doc(user?.uid)
//                     .collection("expense by date")
//                     .doc(user?.uid)
//                     .collection("years")
//                     .doc(year)
//                     .collection("months")
//                     .doc(month)
//                     .collection("days")
//                     .doc(day)
//                     .collection("expense")
//                     .doc(uuid)
//                     .set(expenseModel.toFirestore());
//               })
//         ],
//       ),