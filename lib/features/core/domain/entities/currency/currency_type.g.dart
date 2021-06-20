// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CurrencyType _$NGN = const CurrencyType._('NGN');
const CurrencyType _$USD = const CurrencyType._('USD');
const CurrencyType _$GBP = const CurrencyType._('GBP');

CurrencyType _$currencyTypeValueOf(String name) {
  switch (name) {
    case 'NGN':
      return _$NGN;
    case 'USD':
      return _$USD;
    case 'GBP':
      return _$GBP;
    default:
      return _$NGN;
  }
}

final BuiltSet<CurrencyType> _$currencyTypeValues =
    new BuiltSet<CurrencyType>(const <CurrencyType>[
  _$NGN,
  _$USD,
  _$GBP,
]);

Serializer<CurrencyType> _$currencyTypeSerializer =
    new _$CurrencyTypeSerializer();

class _$CurrencyTypeSerializer implements PrimitiveSerializer<CurrencyType> {
  @override
  final Iterable<Type> types = const <Type>[CurrencyType];
  @override
  final String wireName = 'CurrencyType';

  @override
  Object serialize(Serializers serializers, CurrencyType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  CurrencyType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CurrencyType.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
