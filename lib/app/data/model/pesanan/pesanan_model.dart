import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reza_reservation/app/data/model/rekening/rekening_model.dart';
import 'package:reza_reservation/app/data/model/wisata/wisata_model.dart';

part 'pesanan_model.freezed.dart';
part 'pesanan_model.g.dart';

@freezed
class PesananModel with _$PesananModel {
  const factory PesananModel(
      {int? id,
      required String namaPemesan,
      required num nomorPemesan,
      required String namaRekeningPemesan,
      required num nomorRekeningPemesan,
      required String namaBankPemesan,
      required num wisata,
      required num rekeningPenerima,
      required num jumlahTicket,
      required String totalHarga,
      required String image,
      required int ownerId,
      required String creator,
      required String status}) = _PesananModel;

  factory PesananModel.fromJson(Map<String, dynamic> json) =>
      _$PesananModelFromJson(json);
}
