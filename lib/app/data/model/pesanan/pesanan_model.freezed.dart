// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pesanan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PesananModel _$PesananModelFromJson(Map<String, dynamic> json) {
  return _PesananModel.fromJson(json);
}

/// @nodoc
mixin _$PesananModel {
  String get id => throw _privateConstructorUsedError;
  String get namaPemesan => throw _privateConstructorUsedError;
  String get nomorPemesan => throw _privateConstructorUsedError;
  String get namaRekeningPemesan => throw _privateConstructorUsedError;
  String get nomorRekeningPemesan => throw _privateConstructorUsedError;
  String get namaBankPemesan => throw _privateConstructorUsedError;
  String get namaWisata => throw _privateConstructorUsedError;
  String get hargaDasar => throw _privateConstructorUsedError;
  String get jumlahTicket => throw _privateConstructorUsedError;
  String get totalHarga => throw _privateConstructorUsedError;
  RekeningModel get rekeningPenerima => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PesananModelCopyWith<PesananModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PesananModelCopyWith<$Res> {
  factory $PesananModelCopyWith(
          PesananModel value, $Res Function(PesananModel) then) =
      _$PesananModelCopyWithImpl<$Res, PesananModel>;
  @useResult
  $Res call(
      {String id,
      String namaPemesan,
      String nomorPemesan,
      String namaRekeningPemesan,
      String nomorRekeningPemesan,
      String namaBankPemesan,
      String namaWisata,
      String hargaDasar,
      String jumlahTicket,
      String totalHarga,
      RekeningModel rekeningPenerima,
      String image,
      String ownerId,
      String status});

  $RekeningModelCopyWith<$Res> get rekeningPenerima;
}

/// @nodoc
class _$PesananModelCopyWithImpl<$Res, $Val extends PesananModel>
    implements $PesananModelCopyWith<$Res> {
  _$PesananModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namaPemesan = null,
    Object? nomorPemesan = null,
    Object? namaRekeningPemesan = null,
    Object? nomorRekeningPemesan = null,
    Object? namaBankPemesan = null,
    Object? namaWisata = null,
    Object? hargaDasar = null,
    Object? jumlahTicket = null,
    Object? totalHarga = null,
    Object? rekeningPenerima = null,
    Object? image = null,
    Object? ownerId = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      namaPemesan: null == namaPemesan
          ? _value.namaPemesan
          : namaPemesan // ignore: cast_nullable_to_non_nullable
              as String,
      nomorPemesan: null == nomorPemesan
          ? _value.nomorPemesan
          : nomorPemesan // ignore: cast_nullable_to_non_nullable
              as String,
      namaRekeningPemesan: null == namaRekeningPemesan
          ? _value.namaRekeningPemesan
          : namaRekeningPemesan // ignore: cast_nullable_to_non_nullable
              as String,
      nomorRekeningPemesan: null == nomorRekeningPemesan
          ? _value.nomorRekeningPemesan
          : nomorRekeningPemesan // ignore: cast_nullable_to_non_nullable
              as String,
      namaBankPemesan: null == namaBankPemesan
          ? _value.namaBankPemesan
          : namaBankPemesan // ignore: cast_nullable_to_non_nullable
              as String,
      namaWisata: null == namaWisata
          ? _value.namaWisata
          : namaWisata // ignore: cast_nullable_to_non_nullable
              as String,
      hargaDasar: null == hargaDasar
          ? _value.hargaDasar
          : hargaDasar // ignore: cast_nullable_to_non_nullable
              as String,
      jumlahTicket: null == jumlahTicket
          ? _value.jumlahTicket
          : jumlahTicket // ignore: cast_nullable_to_non_nullable
              as String,
      totalHarga: null == totalHarga
          ? _value.totalHarga
          : totalHarga // ignore: cast_nullable_to_non_nullable
              as String,
      rekeningPenerima: null == rekeningPenerima
          ? _value.rekeningPenerima
          : rekeningPenerima // ignore: cast_nullable_to_non_nullable
              as RekeningModel,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RekeningModelCopyWith<$Res> get rekeningPenerima {
    return $RekeningModelCopyWith<$Res>(_value.rekeningPenerima, (value) {
      return _then(_value.copyWith(rekeningPenerima: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PesananModelImplCopyWith<$Res>
    implements $PesananModelCopyWith<$Res> {
  factory _$$PesananModelImplCopyWith(
          _$PesananModelImpl value, $Res Function(_$PesananModelImpl) then) =
      __$$PesananModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String namaPemesan,
      String nomorPemesan,
      String namaRekeningPemesan,
      String nomorRekeningPemesan,
      String namaBankPemesan,
      String namaWisata,
      String hargaDasar,
      String jumlahTicket,
      String totalHarga,
      RekeningModel rekeningPenerima,
      String image,
      String ownerId,
      String status});

  @override
  $RekeningModelCopyWith<$Res> get rekeningPenerima;
}

/// @nodoc
class __$$PesananModelImplCopyWithImpl<$Res>
    extends _$PesananModelCopyWithImpl<$Res, _$PesananModelImpl>
    implements _$$PesananModelImplCopyWith<$Res> {
  __$$PesananModelImplCopyWithImpl(
      _$PesananModelImpl _value, $Res Function(_$PesananModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namaPemesan = null,
    Object? nomorPemesan = null,
    Object? namaRekeningPemesan = null,
    Object? nomorRekeningPemesan = null,
    Object? namaBankPemesan = null,
    Object? namaWisata = null,
    Object? hargaDasar = null,
    Object? jumlahTicket = null,
    Object? totalHarga = null,
    Object? rekeningPenerima = null,
    Object? image = null,
    Object? ownerId = null,
    Object? status = null,
  }) {
    return _then(_$PesananModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      namaPemesan: null == namaPemesan
          ? _value.namaPemesan
          : namaPemesan // ignore: cast_nullable_to_non_nullable
              as String,
      nomorPemesan: null == nomorPemesan
          ? _value.nomorPemesan
          : nomorPemesan // ignore: cast_nullable_to_non_nullable
              as String,
      namaRekeningPemesan: null == namaRekeningPemesan
          ? _value.namaRekeningPemesan
          : namaRekeningPemesan // ignore: cast_nullable_to_non_nullable
              as String,
      nomorRekeningPemesan: null == nomorRekeningPemesan
          ? _value.nomorRekeningPemesan
          : nomorRekeningPemesan // ignore: cast_nullable_to_non_nullable
              as String,
      namaBankPemesan: null == namaBankPemesan
          ? _value.namaBankPemesan
          : namaBankPemesan // ignore: cast_nullable_to_non_nullable
              as String,
      namaWisata: null == namaWisata
          ? _value.namaWisata
          : namaWisata // ignore: cast_nullable_to_non_nullable
              as String,
      hargaDasar: null == hargaDasar
          ? _value.hargaDasar
          : hargaDasar // ignore: cast_nullable_to_non_nullable
              as String,
      jumlahTicket: null == jumlahTicket
          ? _value.jumlahTicket
          : jumlahTicket // ignore: cast_nullable_to_non_nullable
              as String,
      totalHarga: null == totalHarga
          ? _value.totalHarga
          : totalHarga // ignore: cast_nullable_to_non_nullable
              as String,
      rekeningPenerima: null == rekeningPenerima
          ? _value.rekeningPenerima
          : rekeningPenerima // ignore: cast_nullable_to_non_nullable
              as RekeningModel,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PesananModelImpl implements _PesananModel {
  const _$PesananModelImpl(
      {required this.id,
      required this.namaPemesan,
      required this.nomorPemesan,
      required this.namaRekeningPemesan,
      required this.nomorRekeningPemesan,
      required this.namaBankPemesan,
      required this.namaWisata,
      required this.hargaDasar,
      required this.jumlahTicket,
      required this.totalHarga,
      required this.rekeningPenerima,
      required this.image,
      required this.ownerId,
      required this.status});

  factory _$PesananModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PesananModelImplFromJson(json);

  @override
  final String id;
  @override
  final String namaPemesan;
  @override
  final String nomorPemesan;
  @override
  final String namaRekeningPemesan;
  @override
  final String nomorRekeningPemesan;
  @override
  final String namaBankPemesan;
  @override
  final String namaWisata;
  @override
  final String hargaDasar;
  @override
  final String jumlahTicket;
  @override
  final String totalHarga;
  @override
  final RekeningModel rekeningPenerima;
  @override
  final String image;
  @override
  final String ownerId;
  @override
  final String status;

  @override
  String toString() {
    return 'PesananModel(id: $id, namaPemesan: $namaPemesan, nomorPemesan: $nomorPemesan, namaRekeningPemesan: $namaRekeningPemesan, nomorRekeningPemesan: $nomorRekeningPemesan, namaBankPemesan: $namaBankPemesan, namaWisata: $namaWisata, hargaDasar: $hargaDasar, jumlahTicket: $jumlahTicket, totalHarga: $totalHarga, rekeningPenerima: $rekeningPenerima, image: $image, ownerId: $ownerId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PesananModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namaPemesan, namaPemesan) ||
                other.namaPemesan == namaPemesan) &&
            (identical(other.nomorPemesan, nomorPemesan) ||
                other.nomorPemesan == nomorPemesan) &&
            (identical(other.namaRekeningPemesan, namaRekeningPemesan) ||
                other.namaRekeningPemesan == namaRekeningPemesan) &&
            (identical(other.nomorRekeningPemesan, nomorRekeningPemesan) ||
                other.nomorRekeningPemesan == nomorRekeningPemesan) &&
            (identical(other.namaBankPemesan, namaBankPemesan) ||
                other.namaBankPemesan == namaBankPemesan) &&
            (identical(other.namaWisata, namaWisata) ||
                other.namaWisata == namaWisata) &&
            (identical(other.hargaDasar, hargaDasar) ||
                other.hargaDasar == hargaDasar) &&
            (identical(other.jumlahTicket, jumlahTicket) ||
                other.jumlahTicket == jumlahTicket) &&
            (identical(other.totalHarga, totalHarga) ||
                other.totalHarga == totalHarga) &&
            (identical(other.rekeningPenerima, rekeningPenerima) ||
                other.rekeningPenerima == rekeningPenerima) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      namaPemesan,
      nomorPemesan,
      namaRekeningPemesan,
      nomorRekeningPemesan,
      namaBankPemesan,
      namaWisata,
      hargaDasar,
      jumlahTicket,
      totalHarga,
      rekeningPenerima,
      image,
      ownerId,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PesananModelImplCopyWith<_$PesananModelImpl> get copyWith =>
      __$$PesananModelImplCopyWithImpl<_$PesananModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PesananModelImplToJson(
      this,
    );
  }
}

abstract class _PesananModel implements PesananModel {
  const factory _PesananModel(
      {required final String id,
      required final String namaPemesan,
      required final String nomorPemesan,
      required final String namaRekeningPemesan,
      required final String nomorRekeningPemesan,
      required final String namaBankPemesan,
      required final String namaWisata,
      required final String hargaDasar,
      required final String jumlahTicket,
      required final String totalHarga,
      required final RekeningModel rekeningPenerima,
      required final String image,
      required final String ownerId,
      required final String status}) = _$PesananModelImpl;

  factory _PesananModel.fromJson(Map<String, dynamic> json) =
      _$PesananModelImpl.fromJson;

  @override
  String get id;
  @override
  String get namaPemesan;
  @override
  String get nomorPemesan;
  @override
  String get namaRekeningPemesan;
  @override
  String get nomorRekeningPemesan;
  @override
  String get namaBankPemesan;
  @override
  String get namaWisata;
  @override
  String get hargaDasar;
  @override
  String get jumlahTicket;
  @override
  String get totalHarga;
  @override
  RekeningModel get rekeningPenerima;
  @override
  String get image;
  @override
  String get ownerId;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$PesananModelImplCopyWith<_$PesananModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
