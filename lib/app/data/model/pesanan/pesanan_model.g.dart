// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pesanan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PesananModelImpl _$$PesananModelImplFromJson(Map<String, dynamic> json) =>
    _$PesananModelImpl(
      id: json['id'] as String,
      namaPemesan: json['namaPemesan'] as String,
      nomorPemesan: json['nomorPemesan'] as String,
      namaRekeningPemesan: json['namaRekeningPemesan'] as String,
      nomorRekeningPemesan: json['nomorRekeningPemesan'] as String,
      namaBankPemesan: json['namaBankPemesan'] as String,
      wisata: WisataModel.fromJson(json['wisata'] as Map<String, dynamic>),
      rekeningPenerima: RekeningModel.fromJson(
          json['rekeningPenerima'] as Map<String, dynamic>),
      jumlahTicket: json['jumlahTicket'] as String,
      totalHarga: json['totalHarga'] as String,
      image: json['image'] as String,
      ownerId: json['ownerId'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$PesananModelImplToJson(_$PesananModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'namaPemesan': instance.namaPemesan,
      'nomorPemesan': instance.nomorPemesan,
      'namaRekeningPemesan': instance.namaRekeningPemesan,
      'nomorRekeningPemesan': instance.nomorRekeningPemesan,
      'namaBankPemesan': instance.namaBankPemesan,
      'wisata': instance.wisata.toJson(),
      'rekeningPenerima': instance.rekeningPenerima.toJson(),
      'jumlahTicket': instance.jumlahTicket,
      'totalHarga': instance.totalHarga,
      'image': instance.image,
      'ownerId': instance.ownerId,
      'status': instance.status,
    };
