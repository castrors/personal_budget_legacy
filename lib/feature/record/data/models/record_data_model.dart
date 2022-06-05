import 'package:personal_budget/feature/record/data/models/record_model.dart';
import 'package:personal_budget/feature/record/domain/entities/record_data.dart';

class RecordDataModel extends RecordData {
  const RecordDataModel({
    required List<RecordModel> records,
  }) : super(
          records: records,
        );

  factory RecordDataModel.fromJson(List<dynamic> json) {
    final records = json.map((record) {
      return RecordModel.fromJson(record as Map<String, dynamic>);
    }).toList();
    return RecordDataModel(records: records);
  }
}
