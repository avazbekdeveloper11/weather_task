import 'package:bloc/bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/infrastructure/models/weather_model/weather_model.dart';

import '../../infrastructure/repositories/weather_repo.dart';

part 'weather_bloc.freezed.dart';

part 'weather_event.dart';

part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepo _weatherRepo;

  WeatherBloc(this._weatherRepo) : super(const _WeatherState()) {
    on<_GetData>(_getData);
  }

  Future<void> _getData(
    _GetData getData,
    Emitter<WeatherState> emit,
  ) async {
    EasyLoading.show();
    final res = await _weatherRepo.getWather(getData.country);
    res.fold((l) async {
      EasyLoading.showError(l.message);
      return;
    }, (r) async {
      print(r);
      EasyLoading.dismiss();
      return emit(state.copyWith());
    });
  }
}
