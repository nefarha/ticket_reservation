// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wisata_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WisataModel _$WisataModelFromJson(Map<String, dynamic> json) {
  return _WisataModel.fromJson(json);
}

/// @nodoc
mixin _$WisataModel {
  int? get id => throw _privateConstructorUsedError;
  String get namaWisata => throw _privateConstructorUsedError;
  num get harga => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WisataModelCopyWith<WisataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WisataModelCopyWith<$Res> {
  factory $WisataModelCopyWith(
          WisataModel value, $Res Function(WisataModel) then) =
      _$WisataModelCopyWithImpl<$Res, WisataModel>;
  @useResult
  $Res call({int? id, String namaWisata, num harga});
}

/// @nodoc
class _$WisataModelCopyWithImpl<$Res, $Val extends WisataModel>
    implements $WisataModelCopyWith<$Res> {
  _$WisataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? namaWisata = null,
    Object? harga = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      namaWisata: null == namaWisata
          ? _value.namaWisata
          : namaWisata // ignore: cast_nullable_to_non_nullable
              as String,
      harga: null == harga
          ? _value.harga
          : harga // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WisataModelImplCopyWith<$Res>
    implements $WisataModelCopyWith<$Res> {
  factory _$$WisataModelImplCopyWith(
          _$WisataModelImpl value, $Res Function(_$WisataModelImpl) then) =
      __$$WisataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String namaWisata, num harga});
}

/// @nodoc
class __$$WisataModelImplCopyWithImpl<$Res>
    extends _$WisataModelCopyWithImpl<$Res, _$WisataModelImpl>
    implements _$$WisataModelImplCopyWith<$Res> {
  __$$WisataModelImplCopyWithImpl(
      _$WisataModelImpl _value, $Res Function(_$WisataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? namaWisata = null,
    Object? harga = null,
  }) {
    return _then(_$WisataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      namaWisata: null == namaWisata
          ? _value.namaWisata
          : namaWisata // ignore: cast_nullable_to_non_nullable
              as String,
      harga: null == harga
          ? _value.harga
          : harga // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WisataModelImpl implements _WisataModel {
  const _$WisataModelImpl(
      {this.id, required this.namaWisata, required this.harga});

  factory _$WisataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WisataModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String namaWisata;
  @override
  final num harga;

  @override
  String toString() {
    return 'WisataModel(id: $id, namaWisata: $namaWisata, harga: $harga)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WisataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namaWisata, namaWisata) ||
                other.namaWisata == namaWisata) &&
            (identical(other.harga, harga) || other.harga == harga));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, namaWisata, harga);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WisataModelImplCopyWith<_$WisataModelImpl> get copyWith =>
      __$$WisataModelImplCopyWithImpl<_$WisataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WisataModelImplToJson(
      this,
    );
  }
}

abstract class _WisataModel implements WisataModel {
  const factory _WisataModel(
      {final int? id,
      required final String namaWisata,
      required final num harga}) = _$WisataModelImpl;

  factory _WisataModel.fromJson(Map<String, dynamic> json) =
      _$WisataModelImpl.fromJson;

  @override
  int? get id;
  @override
  String get namaWisata;
  @override
  num get harga;
  @override
  @JsonKey(ignore: true)
  _$$WisataModelImplCopyWith<_$WisataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
