import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reza_reservation/app/data/model/rekening/rekening_model.dart';

part 'pesanan_model.freezed.dart';
part 'pesanan_model.g.dart';

@freezed
class PesananModel with _$PesananModel {
  const factory PesananModel(
      {required String id,
      required String namaPemesan,
      required String nomorPemesan,
      required String namaRekeningPemesan,
      required String nomorRekeningPemesan,
      required String namaBankPemesan,
      required String namaWisata,
      required String hargaDasar,
      required String jumlahTicket,
      required String totalHarga,
      required RekeningModel rekeningPenerima,
      required String image,
      required String ownerId,
      required String status}) = _PesananModel;

  factory PesananModel.fromJson(Map<String, dynamic> json) =>
      _$PesananModelFromJson(json);
}
