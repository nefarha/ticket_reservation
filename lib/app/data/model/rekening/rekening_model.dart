import 'package:freezed_annotation/freezed_annotation.dart';

part 'rekening_model.freezed.dart';
part 'rekening_model.g.dart';

@freezed
class RekeningModel with _$RekeningModel {
  const factory RekeningModel({
    int? id,
    required String name,
    required String bank_name,
    required String number,
    required String ownerId,
  }) = _RekeningModel;

  factory RekeningModel.fromJson(Map<String, dynamic> json) =>
      _$RekeningModelFromJson(json);
}
