// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pesanan_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PesananViewModelImpl _$$PesananViewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PesananViewModelImpl(
      id: json['id'] as int?,
      namaPemesan: json['nama_pemesan'] as String,
      nomorPemesan: json['nomor_pemesan'] as num,
      namaRekeningPemesan: json['nama_rekening_pemesan'] as String,
      nomorRekeningPemesan: json['nomor_rekening_pemesan'] as num,
      namaBankPemesan: json['nama_bank_pemesan'] as String,
      wisata: WisataModel.fromJson(json['wisata'] as Map<String, dynamic>),
      rekeningPenerima: RekeningModel.fromJson(
          json['rekening_penerima'] as Map<String, dynamic>),
      jumlahTicket: json['jumlah_ticket'] as num,
      totalHarga: json['total_harga'] as String,
      image: json['image'] as String,
      ownerId: json['owner_id'] as int,
      creator: json['creator'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$PesananViewModelImplToJson(
        _$PesananViewModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_pemesan': instance.namaPemesan,
      'nomor_pemesan': instance.nomorPemesan,
      'nama_rekening_pemesan': instance.namaRekeningPemesan,
      'nomor_rekening_pemesan': instance.nomorRekeningPemesan,
      'nama_bank_pemesan': instance.namaBankPemesan,
      'wisata': instance.wisata.toJson(),
      'rekening_penerima': instance.rekeningPenerima.toJson(),
      'jumlah_ticket': instance.jumlahTicket,
      'total_harga': instance.totalHarga,
      'image': instance.image,
      'owner_id': instance.ownerId,
      'creator': instance.creator,
      'status': instance.status,
    };
