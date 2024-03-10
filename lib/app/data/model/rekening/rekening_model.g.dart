// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rekening_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RekeningModelImpl _$$RekeningModelImplFromJson(Map<String, dynamic> json) =>
    _$RekeningModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String,
      bank_name: json['bank_name'] as String,
      number: json['number'] as String,
      ownerId: json['owner_id'] as String,
    );

Map<String, dynamic> _$$RekeningModelImplToJson(_$RekeningModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bank_name': instance.bank_name,
      'number': instance.number,
      'owner_id': instance.ownerId,
    };
