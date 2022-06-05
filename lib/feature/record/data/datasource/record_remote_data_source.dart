import 'package:personal_budget/feature/record/domain/entities/record.dart';
import 'package:personal_budget/feature/record/domain/entities/record_data.dart';

abstract class RecordRemoteDataSource {
  /// Calls the remote data source to fetch a record with the given id.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<RecordData> getAllRecords();

  /// Calls the remote data source to fetch a record with the given id.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<Record> getRecord(String id);
  void addRecord(Record record);
  void updateRecord(Record record);
}
