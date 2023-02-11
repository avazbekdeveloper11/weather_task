// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherModel> _$weatherModelSerializer =
    new _$WeatherModelSerializer();

class _$WeatherModelSerializer implements StructuredSerializer<WeatherModel> {
  @override
  final Iterable<Type> types = const [WeatherModel, _$WeatherModel];
  @override
  final String wireName = 'WeatherModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.placeId;
    if (value != null) {
      result
        ..add('place_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.admArea1;
    if (value != null) {
      result
        ..add('adm_area1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.admArea2;
    if (value != null) {
      result
        ..add('adm_area2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lat;
    if (value != null) {
      result
        ..add('lat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lon;
    if (value != null) {
      result
        ..add('lon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timezone;
    if (value != null) {
      result
        ..add('timezone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  WeatherModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'place_id':
          result.placeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'adm_area1':
          result.admArea1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'adm_area2':
          result.admArea2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lon':
          result.lon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'timezone':
          result.timezone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherModel extends WeatherModel {
  @override
  final String? name;
  @override
  final String? placeId;
  @override
  final String? admArea1;
  @override
  final String? admArea2;
  @override
  final String? country;
  @override
  final String? lat;
  @override
  final String? lon;
  @override
  final String? timezone;
  @override
  final String? type;

  factory _$WeatherModel([void Function(WeatherModelBuilder)? updates]) =>
      (new WeatherModelBuilder()..update(updates))._build();

  _$WeatherModel._(
      {this.name,
      this.placeId,
      this.admArea1,
      this.admArea2,
      this.country,
      this.lat,
      this.lon,
      this.timezone,
      this.type})
      : super._();

  @override
  WeatherModel rebuild(void Function(WeatherModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherModelBuilder toBuilder() => new WeatherModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherModel &&
        name == other.name &&
        placeId == other.placeId &&
        admArea1 == other.admArea1 &&
        admArea2 == other.admArea2 &&
        country == other.country &&
        lat == other.lat &&
        lon == other.lon &&
        timezone == other.timezone &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, name.hashCode), placeId.hashCode),
                                admArea1.hashCode),
                            admArea2.hashCode),
                        country.hashCode),
                    lat.hashCode),
                lon.hashCode),
            timezone.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherModel')
          ..add('name', name)
          ..add('placeId', placeId)
          ..add('admArea1', admArea1)
          ..add('admArea2', admArea2)
          ..add('country', country)
          ..add('lat', lat)
          ..add('lon', lon)
          ..add('timezone', timezone)
          ..add('type', type))
        .toString();
  }
}

class WeatherModelBuilder
    implements Builder<WeatherModel, WeatherModelBuilder> {
  _$WeatherModel? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  String? _admArea1;
  String? get admArea1 => _$this._admArea1;
  set admArea1(String? admArea1) => _$this._admArea1 = admArea1;

  String? _admArea2;
  String? get admArea2 => _$this._admArea2;
  set admArea2(String? admArea2) => _$this._admArea2 = admArea2;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _lat;
  String? get lat => _$this._lat;
  set lat(String? lat) => _$this._lat = lat;

  String? _lon;
  String? get lon => _$this._lon;
  set lon(String? lon) => _$this._lon = lon;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  WeatherModelBuilder();

  WeatherModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _placeId = $v.placeId;
      _admArea1 = $v.admArea1;
      _admArea2 = $v.admArea2;
      _country = $v.country;
      _lat = $v.lat;
      _lon = $v.lon;
      _timezone = $v.timezone;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherModel;
  }

  @override
  void update(void Function(WeatherModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherModel build() => _build();

  _$WeatherModel _build() {
    final _$result = _$v ??
        new _$WeatherModel._(
            name: name,
            placeId: placeId,
            admArea1: admArea1,
            admArea2: admArea2,
            country: country,
            lat: lat,
            lon: lon,
            timezone: timezone,
            type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
