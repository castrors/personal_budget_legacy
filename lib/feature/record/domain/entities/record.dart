import 'package:equatable/equatable.dart';

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
  // TODO: add category class
  final String category;
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
