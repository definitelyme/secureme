import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/widgets.dart';
import 'package:nil/nil.dart';

part 'role.g.dart';

class Role extends EnumClass {
  static const Role officer = _$officer;
  @BuiltValueEnumConst(fallback: true)
  static const Role civilian = _$civilian;

  const Role._(String name) : super(name);

  static BuiltSet<Role> get values => _$values;

  static BuiltList<Role> get list => _$values.toBuiltList();

  static Role valueOf(String name) => _$valueOf(name);

  bool get isOfficer => name == officer.name;

  bool get isCivilian => name == civilian.name;

  T? fold<T>({
    T Function()? officer,
    T Function()? civilian,
  }) {
    switch (name) {
      case 'officer':
        return officer?.call();
      case 'civilian':
      default:
        return civilian?.call() ?? ((T is Widget) ? nil as T : null);
    }
  }
}
