import 'package:personal_budget/feature/record/domain/entities/record.dart';
import 'package:personal_budget/feature/record/domain/entities/record_data.dart';

abstract class RecordLocalDataSource {
  /// Gets all the cached [RecordData] from the local data source.
  ///
  /// Throws a [CacheException] if no cached data is present.
  Future<RecordData> getAllRecords();
  Future<void> addRecord(Record record);
}
