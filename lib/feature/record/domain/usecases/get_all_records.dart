import 'package:dartz/dartz.dart';
import 'package:personal_budget/core/error/failures.dart';
import 'package:personal_budget/feature/record/domain/entities/record_data.dart';
import 'package:personal_budget/feature/record/domain/repositories/record_repository.dart';
import 'package:personal_budget/usecases/usecase.dart';

class GetAllRecords implements UseCase<RecordData, NoParams> {
  GetAllRecords(this.recordRepository);

  final RecordRepository recordRepository;

  @override
  Future<Either<Failure, RecordData>> call(NoParams params) async {
    return recordRepository.getAllRecords();
  }
}
