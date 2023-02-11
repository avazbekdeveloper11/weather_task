import 'package:chopper/chopper.dart';

import '../../domain/core/build_value_convertor.dart';
import '../../domain/core/interceptor.dart';

part 'weather_apis.chopper.dart';

@ChopperApi(baseUrl: 'api/v1/free/')
abstract class WeatherService extends ChopperService {
  @Get(
    path:
        'find_places?text={country}&language=en&key=ueth8ir1dq2dstfnmsfvp4o98o66hyzftxd0t43n',
  )
  Future<Response<dynamic>> getWeather(
    @Path('country') String country,
  );
  static WeatherService create() =>
      _$WeatherService(_Client('https://www.meteosource.com/', true));
}

class _Client extends ChopperClient {
  _Client(String baseUrl, bool useInterceptors)
      : super(
            baseUrl: baseUrl,
            interceptors: useInterceptors
                ? [
                    HttpLoggingInterceptor(),
                    CurlInterceptor(),
                    NetworkInterceptor(),
                    BackendInterceptor(),
                  ]
                : const [],
            converter: BuiltValueConverter(),
            errorConverter: ErrorMyConverter());
}
