part of 'styles.dart';

class AppThemeAdapter extends TypeAdapter<AppTheme> {
  @override
  int get typeId => 13;

  @override
  AppTheme read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppTheme._(
      id: fields[0] as String,
      brightness: fields[1] as Brightness,
      accentColorBrightness: fields[2] as Brightness,
      primaryColor: fields[3] as Color,
      buttonColor: fields[4] as Color,
      indicatorColor: fields[5] as Color,
      primaryColorDark: fields[6] as Color,
      primaryColorLight: fields[7] as Color,
      toggleableActiveColor: fields[8] as Color,
      accentColor: fields[9] as Color,
      splashColor: fields[10] as Color,
      splashFactory: fields[11] as InteractiveInkFeatureFactory,
      visualDensity: fields[12] as VisualDensity,
      textTheme: fields[13] as TextTheme,
    );
  }

  @override
  void write(BinaryWriter writer, AppTheme obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj._brightness)
      ..writeByte(2)
      ..write(obj._accentColorBrightness)
      ..writeByte(3)
      ..write(obj._primaryColor)
      ..writeByte(4)
      ..write(obj._buttonColor)
      ..writeByte(5)
      ..write(obj._indicatorColor)
      ..writeByte(6)
      ..write(obj._primaryColorDark)
      ..writeByte(7)
      ..write(obj._primaryColorLight)
      ..writeByte(8)
      ..write(obj._toggleableActiveColor)
      ..writeByte(9)
      ..write(obj._accentColor)
      ..writeByte(10)
      ..write(obj._splashColor)
      ..writeByte(11)
      ..write(obj._splashFactory)
      ..writeByte(12)
      ..write(obj._visualDensity)
      ..writeByte(13)
      ..write(obj._textTheme);
  }
}
