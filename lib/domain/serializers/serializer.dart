import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:weather_app/infrastructure/models/weather_model/weather_model.dart';

part 'serializer.g.dart';

@SerializersFor([
  WeatherModel,
])

final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
