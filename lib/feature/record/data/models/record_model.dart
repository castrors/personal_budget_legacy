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
    final model = json['data']['record'] as Map<String, dynamic>;
    return RecordModel(
      id: model['id'] as int,
      amount: model['amount'] as double,
      description: model['description'] as String,
      category: model['category'] as String,
      date: DateTime.parse(model['date']as String),
      isExpense: model['isExpense'] as bool,
    );
  }
}
