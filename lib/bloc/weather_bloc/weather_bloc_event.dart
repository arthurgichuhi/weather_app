part of 'weather_bloc_bloc.dart';

class WeatherBlocEvent extends Equatable {
  const WeatherBlocEvent(this.position);
  final Position position;
  @override
  List<Object> get props => [position];
}
