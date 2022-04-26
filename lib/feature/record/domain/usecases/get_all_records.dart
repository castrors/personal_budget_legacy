import 'package:dartz/dartz.dart';
import 'package:personal_budget/core/error/failures.dart';
import 'package:personal_budget/feature/record/domain/entities/record.dart';
import 'package:personal_budget/feature/record/domain/repositories/record_repository.dart';

class GetAllRecords {
  GetAllRecords(this.recordRepository);

  final RecordRepository recordRepository;

  Future<Either<Failure, List<Record>>> execute() async {
    return recordRepository.getAllRecords();
  }
}
