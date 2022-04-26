import 'package:equatable/equatable.dart';

import 'package:personal_budget/feature/record/domain/entities/category.dart';

class Record extends Equatable {
  const Record({
    required this.id,
    required this.amount,
    required this.description,
    required this.category,
    required this.date,
    required this.isExpense,
  });

  final int id;
  final double amount;
  final String description;
  final Category category;
  final DateTime date;
  final bool isExpense;

  @override
  List<Object> get props => [
        id,
        amount,
        description,
        category,
        date,
        isExpense,
      ];
}
