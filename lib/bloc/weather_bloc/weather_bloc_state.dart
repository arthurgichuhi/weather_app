part of 'weather_bloc_bloc.dart';

sealed class WeatherBlocState extends Equatable {
  const WeatherBlocState();

  @override
  List<Object> get props => [];
}

final class WeatherBlocInitial extends WeatherBlocState {}

final class WeatherBlocLoading extends WeatherBlocState {}

final class WeatherBlocFailure extends WeatherBlocState {
  final dynamic error;

  WeatherBlocFailure({required this.error});
  @override
  List<Object> get props => [error];
}

final class WeatherBlocSuccess extends WeatherBlocState {
  final WeatherResponse weather;

  const WeatherBlocSuccess(this.weather);

  @override
  List<Object> get props => [weather];
}
