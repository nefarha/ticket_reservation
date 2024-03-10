// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wisata_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WisataModelImpl _$$WisataModelImplFromJson(Map<String, dynamic> json) =>
    _$WisataModelImpl(
      id: json['id'] as int?,
      namaWisata: json['nama_wisata'] as String,
      harga: json['harga'] as num,
    );

Map<String, dynamic> _$$WisataModelImplToJson(_$WisataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_wisata': instance.namaWisata,
      'harga': instance.harga,
    };
