// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rekening_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RekeningModel _$RekeningModelFromJson(Map<String, dynamic> json) {
  return _RekeningModel.fromJson(json);
}

/// @nodoc
mixin _$RekeningModel {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get bank_name => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RekeningModelCopyWith<RekeningModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RekeningModelCopyWith<$Res> {
  factory $RekeningModelCopyWith(
          RekeningModel value, $Res Function(RekeningModel) then) =
      _$RekeningModelCopyWithImpl<$Res, RekeningModel>;
  @useResult
  $Res call(
      {int? id, String name, String bank_name, String number, String ownerId});
}

/// @nodoc
class _$RekeningModelCopyWithImpl<$Res, $Val extends RekeningModel>
    implements $RekeningModelCopyWith<$Res> {
  _$RekeningModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? bank_name = null,
    Object? number = null,
    Object? ownerId = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bank_name: null == bank_name
          ? _value.bank_name
          : bank_name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RekeningModelImplCopyWith<$Res>
    implements $RekeningModelCopyWith<$Res> {
  factory _$$RekeningModelImplCopyWith(
          _$RekeningModelImpl value, $Res Function(_$RekeningModelImpl) then) =
      __$$RekeningModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String name, String bank_name, String number, String ownerId});
}

/// @nodoc
class __$$RekeningModelImplCopyWithImpl<$Res>
    extends _$RekeningModelCopyWithImpl<$Res, _$RekeningModelImpl>
    implements _$$RekeningModelImplCopyWith<$Res> {
  __$$RekeningModelImplCopyWithImpl(
      _$RekeningModelImpl _value, $Res Function(_$RekeningModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? bank_name = null,
    Object? number = null,
    Object? ownerId = null,
  }) {
    return _then(_$RekeningModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bank_name: null == bank_name
          ? _value.bank_name
          : bank_name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RekeningModelImpl implements _RekeningModel {
  const _$RekeningModelImpl(
      {this.id,
      required this.name,
      required this.bank_name,
      required this.number,
      required this.ownerId});

  factory _$RekeningModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RekeningModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final String bank_name;
  @override
  final String number;
  @override
  final String ownerId;

  @override
  String toString() {
    return 'RekeningModel(id: $id, name: $name, bank_name: $bank_name, number: $number, ownerId: $ownerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RekeningModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bank_name, bank_name) ||
                other.bank_name == bank_name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, bank_name, number, ownerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RekeningModelImplCopyWith<_$RekeningModelImpl> get copyWith =>
      __$$RekeningModelImplCopyWithImpl<_$RekeningModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RekeningModelImplToJson(
      this,
    );
  }
}

abstract class _RekeningModel implements RekeningModel {
  const factory _RekeningModel(
      {final int? id,
      required final String name,
      required final String bank_name,
      required final String number,
      required final String ownerId}) = _$RekeningModelImpl;

  factory _RekeningModel.fromJson(Map<String, dynamic> json) =
      _$RekeningModelImpl.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  String get bank_name;
  @override
  String get number;
  @override
  String get ownerId;
  @override
  @JsonKey(ignore: true)
  _$$RekeningModelImplCopyWith<_$RekeningModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
