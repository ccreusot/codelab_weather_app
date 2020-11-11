// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CityClassAdapter extends TypeAdapter<_$CityData> {
  @override
  final int typeId = 2;

  @override
  _$CityData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$CityData(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as String,
      fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$CityData obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.zipCode)
      ..writeByte(2)
      ..write(obj.region)
      ..writeByte(3)
      ..write(obj.country)
      ..writeByte(4)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CityClassAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CitiesData _$_$CitiesDataFromJson(Map<String, dynamic> json) {
  return _$CitiesData(
    (json['cities'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k, e == null ? null : City.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$_$CitiesDataToJson(_$CitiesData instance) =>
    <String, dynamic>{
      'cities': instance.cities,
    };

_$CityData _$_$CityDataFromJson(Map<String, dynamic> json) {
  return _$CityData(
    json['name'] as String,
    json['npa'] as String,
    json['region'] as String,
    json['country'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$_$CityDataToJson(_$CityData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'npa': instance.zipCode,
      'region': instance.region,
      'country': instance.country,
      'url': instance.url,
    };
