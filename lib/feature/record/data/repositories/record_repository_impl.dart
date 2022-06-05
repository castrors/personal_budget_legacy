import 'package:dartz/dartz.dart';
import 'package:personal_budget/core/error/failures.dart';
import 'package:personal_budget/core/platform/netword_info.dart';
import 'package:personal_budget/feature/record/data/datasource/record_local_data_source.dart';
import 'package:personal_budget/feature/record/data/datasource/record_remote_data_source.dart';
import 'package:personal_budget/feature/record/domain/entities/record.dart';
import 'package:personal_budget/feature/record/domain/entities/record_data.dart';
import 'package:personal_budget/feature/record/domain/repositories/record_repository.dart';

class RecordRepositoryImpl implements RecordRepository {
  RecordRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  final RecordRemoteDataSource remoteDataSource;
  final RecordLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  @override
  void addRecord(Record record) {
    // TODO: implement addRecord
  }

  @override
  void deleteRecord(String id) {
    // TODO: implement deleteRecord
  }

  @override
  Future<Either<Failure, RecordData>> getAllRecords() {
    // TODO: implement getAllRecords
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Record>> getRecord(String id) {
    // TODO: implement getRecord
    throw UnimplementedError();
  }

  @override
  void updateRecord(Record record) {
    // TODO: implement updateRecord
  }
}
