// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pesanan_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PesananViewModel _$PesananViewModelFromJson(Map<String, dynamic> json) {
  return _PesananViewModel.fromJson(json);
}

/// @nodoc
mixin _$PesananViewModel {
  int? get id => throw _privateConstructorUsedError;
  String get namaPemesan => throw _privateConstructorUsedError;
  num get nomorPemesan => throw _privateConstructorUsedError;
  String get namaRekeningPemesan => throw _privateConstructorUsedError;
  num get nomorRekeningPemesan => throw _privateConstructorUsedError;
  String get namaBankPemesan => throw _privateConstructorUsedError;
  WisataModel get wisata => throw _privateConstructorUsedError;
  RekeningModel get rekeningPenerima => throw _privateConstructorUsedError;
  num get jumlahTicket => throw _privateConstructorUsedError;
  String get totalHarga => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get ownerId => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PesananViewModelCopyWith<PesananViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PesananViewModelCopyWith<$Res> {
  factory $PesananViewModelCopyWith(
          PesananViewModel value, $Res Function(PesananViewModel) then) =
      _$PesananViewModelCopyWithImpl<$Res, PesananViewModel>;
  @useResult
  $Res call(
      {int? id,
      String namaPemesan,
      num nomorPemesan,
      String namaRekeningPemesan,
      num nomorRekeningPemesan,
      String namaBankPemesan,
      WisataModel wisata,
      RekeningModel rekeningPenerima,
      num jumlahTicket,
      String totalHarga,
      String image,
      int ownerId,
      String creator,
      String status});

  $WisataModelCopyWith<$Res> get wisata;
  $RekeningModelCopyWith<$Res> get rekeningPenerima;
}

/// @nodoc
class _$PesananViewModelCopyWithImpl<$Res, $Val extends PesananViewModel>
    implements $PesananViewModelCopyWith<$Res> {
  _$PesananViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? namaPemesan = null,
    Object? nomorPemesan = null,
    Object? namaRekeningPemesan = null,
    Object? nomorRekeningPemesan = null,
    Object? namaBankPemesan = null,
    Object? wisata = null,
    Object? rekeningPenerima = null,
    Object? jumlahTicket = null,
    Object? totalHarga = null,
    Object? image = null,
    Object? ownerId = null,
    Object? creator = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      namaPemesan: null == namaPemesan
          ? _value.namaPemesan
          : namaPemesan // ignore: cast_nullable_to_non_nullable
              as String,
      nomorPemesan: null == nomorPemesan
          ? _value.nomorPemesan
          : nomorPemesan // ignore: cast_nullable_to_non_nullable
              as num,
      namaRekeningPemesan: null == namaRekeningPemesan
          ? _value.namaRekeningPemesan
          : namaRekeningPemesan // ignore: cast_nullable_to_non_nullable
              as String,
      nomorRekeningPemesan: null == nomorRekeningPemesan
          ? _value.nomorRekeningPemesan
          : nomorRekeningPemesan // ignore: cast_nullable_to_non_nullable
              as num,
      namaBankPemesan: null == namaBankPemesan
          ? _value.namaBankPemesan
          : namaBankPemesan // ignore: cast_nullable_to_non_nullable
              as String,
      wisata: null == wisata
          ? _value.wisata
          : wisata // ignore: cast_nullable_to_non_nullable
              as WisataModel,
      rekeningPenerima: null == rekeningPenerima
          ? _value.rekeningPenerima
          : rekeningPenerima // ignore: cast_nullable_to_non_nullable
              as RekeningModel,
      jumlahTicket: null == jumlahTicket
          ? _value.jumlahTicket
          : jumlahTicket // ignore: cast_nullable_to_non_nullable
              as num,
      totalHarga: null == totalHarga
          ? _value.totalHarga
          : totalHarga // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WisataModelCopyWith<$Res> get wisata {
    return $WisataModelCopyWith<$Res>(_value.wisata, (value) {
      return _then(_value.copyWith(wisata: value) as $Val);
    });
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
abstract class _$$PesananViewModelImplCopyWith<$Res>
    implements $PesananViewModelCopyWith<$Res> {
  factory _$$PesananViewModelImplCopyWith(_$PesananViewModelImpl value,
          $Res Function(_$PesananViewModelImpl) then) =
      __$$PesananViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String namaPemesan,
      num nomorPemesan,
      String namaRekeningPemesan,
      num nomorRekeningPemesan,
      String namaBankPemesan,
      WisataModel wisata,
      RekeningModel rekeningPenerima,
      num jumlahTicket,
      String totalHarga,
      String image,
      int ownerId,
      String creator,
      String status});

  @override
  $WisataModelCopyWith<$Res> get wisata;
  @override
  $RekeningModelCopyWith<$Res> get rekeningPenerima;
}

/// @nodoc
class __$$PesananViewModelImplCopyWithImpl<$Res>
    extends _$PesananViewModelCopyWithImpl<$Res, _$PesananViewModelImpl>
    implements _$$PesananViewModelImplCopyWith<$Res> {
  __$$PesananViewModelImplCopyWithImpl(_$PesananViewModelImpl _value,
      $Res Function(_$PesananViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? namaPemesan = null,
    Object? nomorPemesan = null,
    Object? namaRekeningPemesan = null,
    Object? nomorRekeningPemesan = null,
    Object? namaBankPemesan = null,
    Object? wisata = null,
    Object? rekeningPenerima = null,
    Object? jumlahTicket = null,
    Object? totalHarga = null,
    Object? image = null,
    Object? ownerId = null,
    Object? creator = null,
    Object? status = null,
  }) {
    return _then(_$PesananViewModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      namaPemesan: null == namaPemesan
          ? _value.namaPemesan
          : namaPemesan // ignore: cast_nullable_to_non_nullable
              as String,
      nomorPemesan: null == nomorPemesan
          ? _value.nomorPemesan
          : nomorPemesan // ignore: cast_nullable_to_non_nullable
              as num,
      namaRekeningPemesan: null == namaRekeningPemesan
          ? _value.namaRekeningPemesan
          : namaRekeningPemesan // ignore: cast_nullable_to_non_nullable
              as String,
      nomorRekeningPemesan: null == nomorRekeningPemesan
          ? _value.nomorRekeningPemesan
          : nomorRekeningPemesan // ignore: cast_nullable_to_non_nullable
              as num,
      namaBankPemesan: null == namaBankPemesan
          ? _value.namaBankPemesan
          : namaBankPemesan // ignore: cast_nullable_to_non_nullable
              as String,
      wisata: null == wisata
          ? _value.wisata
          : wisata // ignore: cast_nullable_to_non_nullable
              as WisataModel,
      rekeningPenerima: null == rekeningPenerima
          ? _value.rekeningPenerima
          : rekeningPenerima // ignore: cast_nullable_to_non_nullable
              as RekeningModel,
      jumlahTicket: null == jumlahTicket
          ? _value.jumlahTicket
          : jumlahTicket // ignore: cast_nullable_to_non_nullable
              as num,
      totalHarga: null == totalHarga
          ? _value.totalHarga
          : totalHarga // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
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
class _$PesananViewModelImpl implements _PesananViewModel {
  const _$PesananViewModelImpl(
      {this.id,
      required this.namaPemesan,
      required this.nomorPemesan,
      required this.namaRekeningPemesan,
      required this.nomorRekeningPemesan,
      required this.namaBankPemesan,
      required this.wisata,
      required this.rekeningPenerima,
      required this.jumlahTicket,
      required this.totalHarga,
      required this.image,
      required this.ownerId,
      required this.creator,
      required this.status});

  factory _$PesananViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PesananViewModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String namaPemesan;
  @override
  final num nomorPemesan;
  @override
  final String namaRekeningPemesan;
  @override
  final num nomorRekeningPemesan;
  @override
  final String namaBankPemesan;
  @override
  final WisataModel wisata;
  @override
  final RekeningModel rekeningPenerima;
  @override
  final num jumlahTicket;
  @override
  final String totalHarga;
  @override
  final String image;
  @override
  final int ownerId;
  @override
  final String creator;
  @override
  final String status;

  @override
  String toString() {
    return 'PesananViewModel(id: $id, namaPemesan: $namaPemesan, nomorPemesan: $nomorPemesan, namaRekeningPemesan: $namaRekeningPemesan, nomorRekeningPemesan: $nomorRekeningPemesan, namaBankPemesan: $namaBankPemesan, wisata: $wisata, rekeningPenerima: $rekeningPenerima, jumlahTicket: $jumlahTicket, totalHarga: $totalHarga, image: $image, ownerId: $ownerId, creator: $creator, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PesananViewModelImpl &&
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
            (identical(other.wisata, wisata) || other.wisata == wisata) &&
            (identical(other.rekeningPenerima, rekeningPenerima) ||
                other.rekeningPenerima == rekeningPenerima) &&
            (identical(other.jumlahTicket, jumlahTicket) ||
                other.jumlahTicket == jumlahTicket) &&
            (identical(other.totalHarga, totalHarga) ||
                other.totalHarga == totalHarga) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.creator, creator) || other.creator == creator) &&
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
      wisata,
      rekeningPenerima,
      jumlahTicket,
      totalHarga,
      image,
      ownerId,
      creator,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PesananViewModelImplCopyWith<_$PesananViewModelImpl> get copyWith =>
      __$$PesananViewModelImplCopyWithImpl<_$PesananViewModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PesananViewModelImplToJson(
      this,
    );
  }
}

abstract class _PesananViewModel implements PesananViewModel {
  const factory _PesananViewModel(
      {final int? id,
      required final String namaPemesan,
      required final num nomorPemesan,
      required final String namaRekeningPemesan,
      required final num nomorRekeningPemesan,
      required final String namaBankPemesan,
      required final WisataModel wisata,
      required final RekeningModel rekeningPenerima,
      required final num jumlahTicket,
      required final String totalHarga,
      required final String image,
      required final int ownerId,
      required final String creator,
      required final String status}) = _$PesananViewModelImpl;

  factory _PesananViewModel.fromJson(Map<String, dynamic> json) =
      _$PesananViewModelImpl.fromJson;

  @override
  int? get id;
  @override
  String get namaPemesan;
  @override
  num get nomorPemesan;
  @override
  String get namaRekeningPemesan;
  @override
  num get nomorRekeningPemesan;
  @override
  String get namaBankPemesan;
  @override
  WisataModel get wisata;
  @override
  RekeningModel get rekeningPenerima;
  @override
  num get jumlahTicket;
  @override
  String get totalHarga;
  @override
  String get image;
  @override
  int get ownerId;
  @override
  String get creator;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$PesananViewModelImplCopyWith<_$PesananViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
