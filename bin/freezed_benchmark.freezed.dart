// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'freezed_benchmark.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FreezedApple {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FreezedAppleCopyWith<FreezedApple> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreezedAppleCopyWith<$Res> {
  factory $FreezedAppleCopyWith(
          FreezedApple value, $Res Function(FreezedApple) then) =
      _$FreezedAppleCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$FreezedAppleCopyWithImpl<$Res> implements $FreezedAppleCopyWith<$Res> {
  _$FreezedAppleCopyWithImpl(this._value, this._then);

  final FreezedApple _value;
  // ignore: unused_field
  final $Res Function(FreezedApple) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FreezedAppleCopyWith<$Res>
    implements $FreezedAppleCopyWith<$Res> {
  factory _$$_FreezedAppleCopyWith(
          _$_FreezedApple value, $Res Function(_$_FreezedApple) then) =
      __$$_FreezedAppleCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$$_FreezedAppleCopyWithImpl<$Res>
    extends _$FreezedAppleCopyWithImpl<$Res>
    implements _$$_FreezedAppleCopyWith<$Res> {
  __$$_FreezedAppleCopyWithImpl(
      _$_FreezedApple _value, $Res Function(_$_FreezedApple) _then)
      : super(_value, (v) => _then(v as _$_FreezedApple));

  @override
  _$_FreezedApple get _value => super._value as _$_FreezedApple;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_FreezedApple(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FreezedApple implements _FreezedApple {
  const _$_FreezedApple({required this.id, required this.name});

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'FreezedApple(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FreezedApple &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_FreezedAppleCopyWith<_$_FreezedApple> get copyWith =>
      __$$_FreezedAppleCopyWithImpl<_$_FreezedApple>(this, _$identity);
}

abstract class _FreezedApple implements FreezedApple {
  const factory _FreezedApple(
      {required final int id, required final String name}) = _$_FreezedApple;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FreezedAppleCopyWith<_$_FreezedApple> get copyWith =>
      throw _privateConstructorUsedError;
}
