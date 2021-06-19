library country_name.dart;

import 'package:kt_dart/collection.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'country_name.gen.dart';

class CountryName {
  @BuiltValueEnumConst(fallback: true)
  static const CountryName Nigeria = _$Nigeria;
  static const CountryName Canada = _$Canada;
  static const CountryName Germany = _$Germany;
  static const CountryName Denmark = _$Denmark;
  static const CountryName France = _$France;
  static const CountryName Malaysia = _$Malaysia;
  static const CountryName Mexico = _$Mexico;
  static const CountryName Mozambique = _$Mozambique;
  static const CountryName Portugal = _$Portugal;
  static const CountryName Spain = _$Spain;
  static const CountryName Romania = _$Romania;
  static const CountryName Tanzania = _$Tanzania;
  @BuiltValueEnumConst(wireName: 'Czech Republic')
  static const CountryName CzechRepublic = _$CzechRepublic;
  @BuiltValueEnumConst(wireName: 'United States')
  static const CountryName UnitedStates = _$UnitedStates;
  @BuiltValueEnumConst(wireName: 'United Kingdom')
  static const CountryName UnitedKingdom = _$UnitedKingdom;

  final String name;

  const CountryName._(this.name);

  static BuiltSet<CountryName> get values => _$countryNameValues;

  static KtList<CountryName> get names => values.toList().toImmutableList();

  static CountryName valueOf(String name) => _$countryNameValueOf(name);

  static Serializer<CountryName> get serializer => _$countryNameSerializer;
}
