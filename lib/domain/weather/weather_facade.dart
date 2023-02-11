import 'package:dartz/dartz.dart';
import 'package:weather_app/domain/weather/weather_failure.dart';

import '../../infrastructure/models/weather_model/weather_model.dart';

abstract class WeatherFacade {
  Future<Either<WeatherFailure, dynamic>> getWather(String country);
}
