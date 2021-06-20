// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CountryTearOff {
  const _$CountryTearOff();

  _Country call(
      {UniqueId<int>? id,
      CountryName name = CountryName.Nigeria,
      String? codeName,
      String? dialCode,
      String language = 'English - UK',
      String prefix = Country.DEFAULT_PREFIX,
      String hintText = Country.DEFAULT_HINT_TEXT,
      int digitsCount = Country.DEFAULT_DIGITS_COUNT}) {
    return _Country(
      id: id,
      name: name,
      codeName: codeName,
      dialCode: dialCode,
      language: language,
      prefix: prefix,
      hintText: hintText,
      digitsCount: digitsCount,
    );
  }
}

/// @nodoc
const $Country = _$CountryTearOff();

/// @nodoc
mixin _$Country {
  UniqueId<int>? get id => throw _privateConstructorUsedError;
  CountryName get name => throw _privateConstructorUsedError;
  String? get codeName => throw _privateConstructorUsedError;
  String? get dialCode => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get prefix => throw _privateConstructorUsedError;
  String get hintText => throw _privateConstructorUsedError;
  int get digitsCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<int>? id,
      CountryName name,
      String? codeName,
      String? dialCode,
      String language,
      String prefix,
      String hintText,
      int digitsCount});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res> implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  final Country _value;
  // ignore: unused_field
  final $Res Function(Country) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? codeName = freezed,
    Object? dialCode = freezed,
    Object? language = freezed,
    Object? prefix = freezed,
    Object? hintText = freezed,
    Object? digitsCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<int>?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as CountryName,
      codeName: codeName == freezed
          ? _value.codeName
          : codeName // ignore: cast_nullable_to_non_nullable
              as String?,
      dialCode: dialCode == freezed
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      prefix: prefix == freezed
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
      hintText: hintText == freezed
          ? _value.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String,
      digitsCount: digitsCount == freezed
          ? _value.digitsCount
          : digitsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) then) =
      __$CountryCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<int>? id,
      CountryName name,
      String? codeName,
      String? dialCode,
      String language,
      String prefix,
      String hintText,
      int digitsCount});
}

/// @nodoc
class __$CountryCopyWithImpl<$Res> extends _$CountryCopyWithImpl<$Res>
    implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(_Country _value, $Res Function(_Country) _then)
      : super(_value, (v) => _then(v as _Country));

  @override
  _Country get _value => super._value as _Country;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? codeName = freezed,
    Object? dialCode = freezed,
    Object? language = freezed,
    Object? prefix = freezed,
    Object? hintText = freezed,
    Object? digitsCount = freezed,
  }) {
    return _then(_Country(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<int>?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as CountryName,
      codeName: codeName == freezed
          ? _value.codeName
          : codeName // ignore: cast_nullable_to_non_nullable
              as String?,
      dialCode: dialCode == freezed
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      prefix: prefix == freezed
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
      hintText: hintText == freezed
          ? _value.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String,
      digitsCount: digitsCount == freezed
          ? _value.digitsCount
          : digitsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Country implements _Country {
  const _$_Country(
      {this.id,
      this.name = CountryName.Nigeria,
      this.codeName,
      this.dialCode,
      this.language = 'English - UK',
      this.prefix = Country.DEFAULT_PREFIX,
      this.hintText = Country.DEFAULT_HINT_TEXT,
      this.digitsCount = Country.DEFAULT_DIGITS_COUNT});

  @override
  final UniqueId<int>? id;
  @JsonKey(defaultValue: CountryName.Nigeria)
  @override
  final CountryName name;
  @override
  final String? codeName;
  @override
  final String? dialCode;
  @JsonKey(defaultValue: 'English - UK')
  @override
  final String language;
  @JsonKey(defaultValue: Country.DEFAULT_PREFIX)
  @override
  final String prefix;
  @JsonKey(defaultValue: Country.DEFAULT_HINT_TEXT)
  @override
  final String hintText;
  @JsonKey(defaultValue: Country.DEFAULT_DIGITS_COUNT)
  @override
  final int digitsCount;

  @override
  String toString() {
    return 'Country(id: $id, name: $name, codeName: $codeName, dialCode: $dialCode, language: $language, prefix: $prefix, hintText: $hintText, digitsCount: $digitsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Country &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.codeName, codeName) ||
                const DeepCollectionEquality()
                    .equals(other.codeName, codeName)) &&
            (identical(other.dialCode, dialCode) ||
                const DeepCollectionEquality()
                    .equals(other.dialCode, dialCode)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.prefix, prefix) ||
                const DeepCollectionEquality().equals(other.prefix, prefix)) &&
            (identical(other.hintText, hintText) ||
                const DeepCollectionEquality()
                    .equals(other.hintText, hintText)) &&
            (identical(other.digitsCount, digitsCount) ||
                const DeepCollectionEquality()
                    .equals(other.digitsCount, digitsCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(codeName) ^
      const DeepCollectionEquality().hash(dialCode) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(prefix) ^
      const DeepCollectionEquality().hash(hintText) ^
      const DeepCollectionEquality().hash(digitsCount);

  @JsonKey(ignore: true)
  @override
  _$CountryCopyWith<_Country> get copyWith =>
      __$CountryCopyWithImpl<_Country>(this, _$identity);
}

abstract class _Country implements Country {
  const factory _Country(
      {UniqueId<int>? id,
      CountryName name,
      String? codeName,
      String? dialCode,
      String language,
      String prefix,
      String hintText,
      int digitsCount}) = _$_Country;

  @override
  UniqueId<int>? get id => throw _privateConstructorUsedError;
  @override
  CountryName get name => throw _privateConstructorUsedError;
  @override
  String? get codeName => throw _privateConstructorUsedError;
  @override
  String? get dialCode => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  String get prefix => throw _privateConstructorUsedError;
  @override
  String get hintText => throw _privateConstructorUsedError;
  @override
  int get digitsCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CountryCopyWith<_Country> get copyWith =>
      throw _privateConstructorUsedError;
}
