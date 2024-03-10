import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reza_reservation/app/data/model/rekening/rekening_model.dart';
import 'package:reza_reservation/app/data/model/wisata/wisata_model.dart';

part 'pesanan_view_model.freezed.dart';
part 'pesanan_view_model.g.dart';

@freezed
class PesananViewModel with _$PesananViewModel {
  const factory PesananViewModel({
    int? id,
    required String namaPemesan,
    required num nomorPemesan,
    required String namaRekeningPemesan,
    required num nomorRekeningPemesan,
    required String namaBankPemesan,
    required WisataModel wisata,
    required RekeningModel rekeningPenerima,
    required num jumlahTicket,
    required String totalHarga,
    required String image,
    required int ownerId,
    required String creator,
    required String status,
  }) = _PesananViewModel;

  factory PesananViewModel.fromJson(Map<String, dynamic> json) =>
      _$PesananViewModelFromJson(json);
}
