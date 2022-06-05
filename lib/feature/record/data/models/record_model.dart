import 'package:personal_budget/feature/record/domain/entities/record.dart';

class RecordModel extends Record {
  const RecordModel({
    required int id,
    required double amount,
    required String description,
    required String category,
    required DateTime date,
    required bool isExpense,
  }) : super(
          id: id,
          amount: amount,
          description: description,
          category: category,
          date: date,
          isExpense: isExpense,
        );

  factory RecordModel.fromJson(Map<String, dynamic> json) {
    return RecordModel(
      id: json['id'] as int,
      amount: json['amount'] as double,
      description: json['description'] as String,
      category: json['category'] as String,
      date: DateTime.parse(json['date'] as String),
      isExpense: json['isExpense'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'amount': amount,
      'description': description,
      'category': category,
      'date': date.toIso8601String(),
      'isExpense': isExpense,
    };
  }
}
