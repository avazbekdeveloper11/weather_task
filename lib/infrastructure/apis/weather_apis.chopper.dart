// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_apis.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$WeatherService extends WeatherService {
  _$WeatherService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = WeatherService;

  @override
  Future<Response<dynamic>> getWeather(String country) {
    final $url =
        'api/v1/free/find_places?text=${country}&language=en&key=ueth8ir1dq2dstfnmsfvp4o98o66hyzftxd0t43n';
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
