class WeatherResponse {
  Coord coord;
  List<Weather> weather;
  String base;
  Main main;
  int visibility;
  Wind wind;
  Rain? rain;
  Clouds clouds;
  int dt;
  Sys sys;
  int timezone;
  int id;
  String name;
  int cod;

  WeatherResponse({
    required this.coord,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.rain,
    required this.clouds,
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });
  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      WeatherResponse(
          coord: Coord.fromJson(json['coord']),
          weather: List.from(json['weather'].map((x) => Weather.fromJson(x))),
          base: json['base'],
          main: Main.fromJson(json['main']),
          visibility: json['visibility'],
          wind: Wind.fromJson(json['wind']),
          rain: json['rain'] != null ? Rain.fromJson(json['rain']) : null,
          clouds: Clouds.fromJson(json['clouds']),
          dt: json['dt'],
          sys: Sys.fromJson(json['sys']),
          timezone: json['timezone'],
          id: json['id'],
          name: json['name'],
          cod: json['cod']);
}

class Clouds {
  int all;

  Clouds({
    required this.all,
  });
  factory Clouds.fromJson(Map<String, dynamic> json) =>
      Clouds(all: json['all']);
}

class Coord {
  double lon;
  double lat;

  Coord({
    required this.lon,
    required this.lat,
  });
  factory Coord.fromJson(Map<String, dynamic> json) =>
      Coord(lon: json['lon'], lat: json['lat']);
}

class Main {
  double temp;
  double feelsLike;
  double tempMin;
  double tempMax;
  int pressure;
  int humidity;
  int? seaLevel;
  int? grndLevel;

  Main({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
    required this.seaLevel,
    required this.grndLevel,
  });
  factory Main.fromJson(Map<String, dynamic> json) => Main(
      temp: json['temp'],
      feelsLike: json['feels_like'],
      tempMin: json['temp_min'],
      tempMax: json['temp_max'],
      pressure: json['pressure'],
      humidity: json['humidity'],
      seaLevel: json['sea_level'],
      grndLevel: json['grnd_level']);
}

class Rain {
  double the1H;

  Rain({
    required this.the1H,
  });
  factory Rain.fromJson(Map<String, dynamic> json) => Rain(the1H: json['1h']);
}

class Sys {
  int type;
  int id;
  String country;
  int sunrise;
  int sunset;

  Sys({
    required this.type,
    required this.id,
    required this.country,
    required this.sunrise,
    required this.sunset,
  });
  factory Sys.fromJson(Map<String, dynamic> json) => Sys(
      type: json['type'],
      id: json['id'],
      country: json['country'],
      sunrise: json['sunrise'],
      sunset: json['sunset']);
}

class Weather {
  int id;
  String main;
  String description;
  String icon;

  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });
  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
      id: json['id'],
      main: json['main'],
      description: json['description'],
      icon: json['icon']);
}

class Wind {
  double speed;
  int deg;
  double? gust;

  Wind({
    required this.speed,
    required this.deg,
    required this.gust,
  });
  factory Wind.fromJson(Map<String, dynamic> json) =>
      Wind(speed: json['speed'], deg: json['deg'], gust: json['gust']);
}
