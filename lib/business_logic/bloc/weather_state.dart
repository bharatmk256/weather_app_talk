
part of 'weather_bloc.dart';

@immutable
abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final Weather? weather;

  WeatherLoaded({this.weather});
}

class WeatherFailed extends WeatherState {}


//https://app.quicktype.io/