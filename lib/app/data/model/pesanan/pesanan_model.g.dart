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
      namaWisata: json['namaWisata'] as String,
      hargaDasar: json['hargaDasar'] as String,
      jumlahTicket: json['jumlahTicket'] as String,
      totalHarga: json['totalHarga'] as String,
      rekeningPenerima: RekeningModel.fromJson(
          json['rekeningPenerima'] as Map<String, dynamic>),
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
      'namaWisata': instance.namaWisata,
      'hargaDasar': instance.hargaDasar,
      'jumlahTicket': instance.jumlahTicket,
      'totalHarga': instance.totalHarga,
      'rekeningPenerima': instance.rekeningPenerima.toJson(),
      'image': instance.image,
      'ownerId': instance.ownerId,
      'status': instance.status,
    };
