import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weather_model.g.dart';

abstract class WeatherModel
    implements Built<WeatherModel, WeatherModelBuilder> {
  WeatherModel._();

  factory WeatherModel([Function(WeatherModelBuilder b) updates]) =
      _$WeatherModel;

  @BuiltValueField(wireName: 'name')
  String? get name;
  @BuiltValueField(wireName: 'place_id')
  String? get placeId;
  @BuiltValueField(wireName: 'adm_area1')
  String? get admArea1;
  @BuiltValueField(wireName: 'adm_area2')
  String? get admArea2;
  @BuiltValueField(wireName: 'country')
  String? get country;
  @BuiltValueField(wireName: 'lat')
  String? get lat;
  @BuiltValueField(wireName: 'lon')
  String? get lon;
  @BuiltValueField(wireName: 'timezone')
  String? get timezone;
  @BuiltValueField(wireName: 'type')
  String? get type;

  static Serializer<WeatherModel> get serializer => _$weatherModelSerializer;
}
