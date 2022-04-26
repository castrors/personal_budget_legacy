import 'package:dartz/dartz.dart';
import 'package:personal_budget/core/error/failures.dart';
import 'package:personal_budget/feature/record/domain/entities/record.dart';

abstract class RecordRepository {
  Future<Either<Failure, List<Record>>> getAllRecords();
  Future<Either<Failure, Record>> getRecord(String id);
  void addRecord(Record record);
  void updateRecord(Record record);
  void deleteRecord(String id);
}
