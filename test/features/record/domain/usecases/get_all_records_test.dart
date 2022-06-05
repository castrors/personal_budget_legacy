import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:personal_budget/feature/record/domain/entities/record.dart';
import 'package:personal_budget/feature/record/domain/entities/record_data.dart';
import 'package:personal_budget/feature/record/domain/repositories/record_repository.dart';
import 'package:personal_budget/feature/record/domain/usecases/get_all_records.dart';
import 'package:personal_budget/usecases/usecase.dart';

class MockRecordRepository extends Mock implements RecordRepository {}

void main() {
  late GetAllRecords usecase;
  late MockRecordRepository mockRecordRepository;

  setUp(() {
    mockRecordRepository = MockRecordRepository();
    usecase = GetAllRecords(mockRecordRepository);
  });

  final tRecord = Record(
    id: 1,
    amount: 1,
    description: 'test',
    category: 'test',
    date: DateTime.now(),
    isExpense: true,
  );
  final tRecords = RecordData(records: [tRecord]);

  test('should get records from the repository', () async {
    //arrange
    when(() => mockRecordRepository.getAllRecords())
        .thenAnswer((_) async => Right(tRecords));
    //act
    final result = await usecase(NoParams());
    //assert
    expect(result, Right(tRecords));
    verify(() => mockRecordRepository.getAllRecords());
    verifyNoMoreInteractions(mockRecordRepository);
  });
}
