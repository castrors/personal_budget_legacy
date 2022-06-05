import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:personal_budget/feature/record/data/models/record_data_model.dart';
import 'package:personal_budget/feature/record/data/models/record_model.dart';
import 'package:personal_budget/feature/record/domain/entities/record_data.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tRecordDataModel = RecordDataModel(
    records: [
      RecordModel(
        id: 1,
        amount: 100,
        description: 'description1',
        category: 'category1',
        date: DateTime.parse('2022-05-29T16:09:08Z'),
        isExpense: true,
      ),
      RecordModel(
        id: 2,
        amount: 200,
        description: 'description2',
        category: 'category2',
        date: DateTime.parse('2022-05-29T16:09:08Z'),
        isExpense: false,
      ),
    ],
  );

  test(
    'should be a subclass of RecordData entity',
    () async {
      //assert
      expect(tRecordDataModel, isA<RecordData>());
    },
  );

  group('fromJson ', () {
    test(
      'should return a valid model when the JSON is correct',
      () async {
        //arrange
        final jsonMap =
            json.decode(fixture('record_data.json')) as Map<String, dynamic>;
        //act
        final result = RecordDataModel.fromJson(
          (jsonMap['data'] as Map<String, dynamic>)['allRecords']
              as List<dynamic>,
        );
        //assert
        expect(result, tRecordDataModel);
      },
    );
  });
}
