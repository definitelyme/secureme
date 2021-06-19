import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'currency_type.g.dart';

class CurrencyType extends EnumClass {
  @BuiltValueEnumConst(fallback: true)
  static const CurrencyType NGN = _$NGN;
  static const CurrencyType USD = _$USD;
  static const CurrencyType GBP = _$GBP;

  const CurrencyType._(String name) : super(name);

  static BuiltSet<CurrencyType> get values => _$currencyTypeValues;

  static CurrencyType valueOf(String name) => _$currencyTypeValueOf(name);

  static Serializer<CurrencyType> get serializer => _$currencyTypeSerializer;
}
