import 'package:freezed_annotation/freezed_annotation.dart';

part 'wisata_model.freezed.dart';
part 'wisata_model.g.dart';

@freezed
class WisataModel with _$WisataModel {
  const factory WisataModel({
    int? id,
    required String namaWisata,
    required num harga,
  }) = _WisataModel;

  factory WisataModel.fromJson(Map<String, dynamic> json) =>
      _$WisataModelFromJson(json);
}
