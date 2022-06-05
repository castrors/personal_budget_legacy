import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:personal_budget/feature/record/data/models/record_model.dart';
import 'package:personal_budget/feature/record/domain/entities/record.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tRecordModel = RecordModel(
    id: 1,
    amount: 100.0,
    description: 'description1',
    category: 'category1',
    date: DateTime.parse('2022-05-29T16:09:08Z'),
    isExpense: true,
  );

  test(
    'should be a subclas of RecordModel entity',
    () async {
      //assert
      expect(tRecordModel, isA<Record>());
    },
  );

  group('fromJson ', () {
    test(
      'should return a valid model when the JSON is correct',
      () async {
        //arrange
        final jsonMap =
            json.decode(fixture('record.json')) as Map<String, dynamic>;
        //act
        final result = RecordModel.fromJson(jsonMap);
        //assert
        expect(result, tRecordModel);
      },
    );
  });
}
