import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'auth_provider.g.dart';

class AuthProvider extends EnumClass {
  @BuiltValueEnumConst(fallback: true)
  static const AuthProvider regular = _$regular;
  static const AuthProvider google = _$google;
  static const AuthProvider facebook = _$facebook;

  const AuthProvider._(String name) : super(name);

  static BuiltSet<AuthProvider> get values => _$authProviderValues;

  static AuthProvider valueOf(String name) => _$authProviderValueOf(name);
}
