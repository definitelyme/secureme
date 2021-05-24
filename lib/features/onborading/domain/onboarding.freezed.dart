// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of onboarding.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OnboardingItemTearOff {
  const _$OnboardingItemTearOff();

  _OnboardingItem<Pixel> call<Pixel>(
      {required String title,
      required String description,
      required Pixel image}) {
    return _OnboardingItem<Pixel>(
      title: title,
      description: description,
      image: image,
    );
  }
}

/// @nodoc
const $OnboardingItem = _$OnboardingItemTearOff();

/// @nodoc
mixin _$OnboardingItem<Pixel> {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Pixel get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingItemCopyWith<Pixel, OnboardingItem<Pixel>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingItemCopyWith<Pixel, $Res> {
  factory $OnboardingItemCopyWith(OnboardingItem<Pixel> value,
          $Res Function(OnboardingItem<Pixel>) then) =
      _$OnboardingItemCopyWithImpl<Pixel, $Res>;
  $Res call({String title, String description, Pixel image});
}

/// @nodoc
class _$OnboardingItemCopyWithImpl<Pixel, $Res>
    implements $OnboardingItemCopyWith<Pixel, $Res> {
  _$OnboardingItemCopyWithImpl(this._value, this._then);

  final OnboardingItem<Pixel> _value;
  // ignore: unused_field
  final $Res Function(OnboardingItem<Pixel>) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Pixel,
    ));
  }
}

/// @nodoc
abstract class _$OnboardingItemCopyWith<Pixel, $Res>
    implements $OnboardingItemCopyWith<Pixel, $Res> {
  factory _$OnboardingItemCopyWith(_OnboardingItem<Pixel> value,
          $Res Function(_OnboardingItem<Pixel>) then) =
      __$OnboardingItemCopyWithImpl<Pixel, $Res>;
  @override
  $Res call({String title, String description, Pixel image});
}

/// @nodoc
class __$OnboardingItemCopyWithImpl<Pixel, $Res>
    extends _$OnboardingItemCopyWithImpl<Pixel, $Res>
    implements _$OnboardingItemCopyWith<Pixel, $Res> {
  __$OnboardingItemCopyWithImpl(_OnboardingItem<Pixel> _value,
      $Res Function(_OnboardingItem<Pixel>) _then)
      : super(_value, (v) => _then(v as _OnboardingItem<Pixel>));

  @override
  _OnboardingItem<Pixel> get _value => super._value as _OnboardingItem<Pixel>;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_OnboardingItem<Pixel>(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Pixel,
    ));
  }
}

/// @nodoc

class _$_OnboardingItem<Pixel> extends _OnboardingItem<Pixel> {
  const _$_OnboardingItem(
      {required this.title, required this.description, required this.image})
      : super._();

  @override
  final String title;
  @override
  final String description;
  @override
  final Pixel image;

  @override
  String toString() {
    return 'OnboardingItem<$Pixel>(title: $title, description: $description, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnboardingItem<Pixel> &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$OnboardingItemCopyWith<Pixel, _OnboardingItem<Pixel>> get copyWith =>
      __$OnboardingItemCopyWithImpl<Pixel, _OnboardingItem<Pixel>>(
          this, _$identity);
}

abstract class _OnboardingItem<Pixel> extends OnboardingItem<Pixel> {
  const factory _OnboardingItem(
      {required String title,
      required String description,
      required Pixel image}) = _$_OnboardingItem<Pixel>;
  const _OnboardingItem._() : super._();

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  Pixel get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OnboardingItemCopyWith<Pixel, _OnboardingItem<Pixel>> get copyWith =>
      throw _privateConstructorUsedError;
}
