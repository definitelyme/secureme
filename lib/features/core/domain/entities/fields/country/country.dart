import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:secureme/features/core/domain/entities/unique_id.dart';
import 'country_name/country_name.dart';

part 'country.freezed.dart';

@freezed
@immutable
class Country with _$Country {
  static const String DEFAULT_PREFIX = '0';
  static const String DEFAULT_HINT_TEXT = '(0801) 1234 5678';
  static const int DEFAULT_DIGITS_COUNT = 10;

  const factory Country({
    UniqueId<int>? id,
    @Default(CountryName.Nigeria) CountryName name,
    String? codeName,
    String? dialCode,
    @Default('English - UK') String language,
    @Default(Country.DEFAULT_PREFIX) String prefix,
    @Default(Country.DEFAULT_HINT_TEXT) String hintText,
    @Default(Country.DEFAULT_DIGITS_COUNT) int digitsCount,
  }) = _Country;

  static const Country NG = Country(
    codeName: 'NG',
    dialCode: '+234',
    digitsCount: 11,
  );

  static List<Country> get list {
    return <Country>[
      const Country(
        codeName: 'CA',
        dialCode: '+1',
        name: CountryName.Canada,
        digitsCount: 10,
        language: 'English',
      ),
      const Country(
        codeName: 'CZ',
        language: 'Cestina',
        name: CountryName.CzechRepublic,
        dialCode: '+420',
        digitsCount: 9,
      ),
      const Country(
        codeName: 'DK',
        language: 'Danish',
        name: CountryName.Denmark,
        dialCode: '+45',
        digitsCount: 6,
      ),
      const Country(
        codeName: 'DE',
        language: 'Deutsch',
        dialCode: '+49',
        name: CountryName.Germany,
        digitsCount: 8,
      ),
      const Country(
        codeName: 'FR',
        dialCode: '+33',
        language: 'French',
        digitsCount: 9,
        name: CountryName.France,
      ),
      const Country(
        codeName: 'MY',
        language: 'Malaysia',
        dialCode: '+60',
        name: CountryName.Malaysia,
        digitsCount: 9,
      ),
      const Country(
        codeName: 'MX',
        language: 'Espanol - Mexico',
        dialCode: '+52',
        name: CountryName.Mexico,
        digitsCount: 10,
      ),
      const Country(
        codeName: 'MZ',
        language: 'Mozambique',
        name: CountryName.Mozambique,
        dialCode: '+258',
        digitsCount: 8,
      ),
      NG,
      const Country(
        codeName: 'PT',
        language: 'Portugues',
        name: CountryName.Portugal,
        dialCode: '+351',
        digitsCount: 9,
      ),
      const Country(
        codeName: 'RO',
        language: 'Romana',
        name: CountryName.Romania,
        dialCode: '+40',
        digitsCount: 9,
      ),
      const Country(
        codeName: 'ES',
        dialCode: '+34',
        language: 'Espanol - Espana',
        digitsCount: 9,
        name: CountryName.Spain,
      ),
      const Country(
        codeName: 'TZ',
        language: 'Kiswahili',
        digitsCount: 9,
        dialCode: '+255',
        name: CountryName.Tanzania,
      ),
      const Country(
        codeName: 'US',
        dialCode: '+1',
        language: 'English - US',
        name: CountryName.UnitedStates,
        digitsCount: 10,
      ),
      const Country(
        codeName: 'GB',
        dialCode: '+44',
        language: 'English - UK',
        name: CountryName.UnitedKingdom,
        hintText: '7766 27 (3507)',
        digitsCount: 10,
      ),
    ];
  }
}
