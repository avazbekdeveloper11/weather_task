import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';

class NetworkInterceptor extends Interceptor {
  @override
  onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final connectivity = await Connectivity().checkConnectivity();

    if (connectivity == ConnectivityResult.none) {
      return handler.reject(DioError(
          requestOptions: options,
          type: DioErrorType.cancel,
          error: 'Please check your internet connection'));
    }
    return handler.next(options);
  }
}
