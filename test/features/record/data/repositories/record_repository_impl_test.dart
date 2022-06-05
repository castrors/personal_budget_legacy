import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:personal_budget/core/platform/netword_info.dart';
import 'package:personal_budget/feature/record/data/datasource/record_local_data_source.dart';
import 'package:personal_budget/feature/record/data/datasource/record_remote_data_source.dart';
import 'package:personal_budget/feature/record/data/repositories/record_repository_impl.dart';

class MockRemoteDataSource extends Mock implements RecordRemoteDataSource {}

class MockLocalDataSource extends Mock implements RecordLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  late RecordRepositoryImpl repository;
  late MockRemoteDataSource mockRemoteDataSource;
  late MockLocalDataSource mockLocalDataSource;
  late MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = RecordRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
    );
  });
}
