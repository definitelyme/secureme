// GENERATED CODE - DO NOT MODIFY BY HAND

part of country_name.dart;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CountryName _$Nigeria = const CountryName._('Nigeria');
const CountryName _$Canada = const CountryName._('Canada');
const CountryName _$Germany = const CountryName._('Germany');
const CountryName _$Denmark = const CountryName._('Denmark');
const CountryName _$France = const CountryName._('France');
const CountryName _$Malaysia = const CountryName._('Malaysia');
const CountryName _$Mexico = const CountryName._('Mexico');
const CountryName _$Mozambique = const CountryName._('Mozambique');
const CountryName _$Portugal = const CountryName._('Portugal');
const CountryName _$Spain = const CountryName._('Spain');
const CountryName _$Romania = const CountryName._('Romania');
const CountryName _$Tanzania = const CountryName._('Tanzania');
const CountryName _$CzechRepublic = const CountryName._('Czech Republic');
const CountryName _$UnitedStates = const CountryName._('United States');
const CountryName _$UnitedKingdom = const CountryName._('United Kingdom');

CountryName _$countryNameValueOf(String name) {
  switch (name) {
    case 'Nigeria':
      return _$Nigeria;
    case 'Canada':
      return _$Canada;
    case 'Germany':
      return _$Germany;
    case 'Denmark':
      return _$Denmark;
    case 'France':
      return _$France;
    case 'Malaysia':
      return _$Malaysia;
    case 'Mexico':
      return _$Mexico;
    case 'Mozambique':
      return _$Mozambique;
    case 'Portugal':
      return _$Portugal;
    case 'Spain':
      return _$Spain;
    case 'Romania':
      return _$Romania;
    case 'Tanzania':
      return _$Tanzania;
    case 'Czech Republic':
      return _$CzechRepublic;
    case 'United States':
      return _$UnitedStates;
    case 'United Kingdom':
      return _$UnitedKingdom;
    default:
      return _$Nigeria;
  }
}

final BuiltSet<CountryName> _$countryNameValues =
    new BuiltSet<CountryName>(const <CountryName>[
  _$Nigeria,
  _$Canada,
  _$Germany,
  _$Denmark,
  _$France,
  _$Malaysia,
  _$Mexico,
  _$Mozambique,
  _$Portugal,
  _$Spain,
  _$Romania,
  _$Tanzania,
  _$CzechRepublic,
  _$UnitedStates,
  _$UnitedKingdom,
]);

Serializer<CountryName> _$countryNameSerializer = new _$CountryNameSerializer();

class _$CountryNameSerializer implements PrimitiveSerializer<CountryName> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'Czech Republic': 'Czech Republic',
    'United States': 'United States',
    'United Kingdom': 'United Kingdom',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Czech Republic': 'Czech Republic',
    'United States': 'United States',
    'United Kingdom': 'United Kingdom',
  };

  @override
  final Iterable<Type> types = const <Type>[CountryName];
  @override
  final String wireName = 'CountryName';

  @override
  Object serialize(Serializers serializers, CountryName object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CountryName deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CountryName.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
