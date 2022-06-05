import 'package:equatable/equatable.dart';
import 'package:personal_budget/feature/record/domain/entities/record.dart';

class RecordData extends Equatable {
  const RecordData({
    required this.records,
  });

  final List<Record> records;

  @override
  List<Object> get props => [records];
}
