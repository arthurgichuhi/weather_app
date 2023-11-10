import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';
import 'package:weather_app/api/weather_api.dart';
import 'package:weather_app/model/weatherResponseModel.dart';

part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';

class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  WeatherBlocBloc() : super(WeatherBlocInitial()) {
    on<WeatherBlocEvent>((event, emit) async {
      emit(WeatherBlocLoading());
      try {
        WeatherAPI weatherAPI = WeatherAPI();

        WeatherResponse weather = await weatherAPI.getWeather(
            lon: event.position.longitude,
            lat: event.position.latitude,
            api: weatherAPI.apiKey);
        emit(WeatherBlocSuccess(weather));
      } catch (e, s) {
        emit(WeatherBlocFailure(error: {"Error": e, "Stack-Error": s}));
      }
    });
  }
}
