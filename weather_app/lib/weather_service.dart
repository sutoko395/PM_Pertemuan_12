// weather_service.dart
class WeatherService {
  Future<List<Map<String, dynamic>>> fetchWeather() async {
    await Future.delayed(const Duration(seconds: 1));

    return [
      {"time": "2023-06-20T00:00", "temp": 19.9},
      {"time": "2023-06-20T01:00", "temp": 19.5},
      {"time": "2023-06-20T02:00", "temp": 19.0},
      {"time": "2023-06-20T03:00", "temp": 19.0},
      {"time": "2023-06-20T04:00", "temp": 18.6},
      {"time": "2023-06-20T05:00", "temp": 19.1},
      {"time": "2023-06-20T06:00", "temp": 21.0},
      {"time": "2023-06-20T07:00", "temp": 22.6},
      {"time": "2023-06-20T08:00", "temp": 23.7},
      {"time": "2023-06-20T09:00", "temp": 24.5},
      {"time": "2023-06-20T10:00", "temp": 23.1},
      {"time": "2023-06-20T11:00", "temp": 20.5},
    ];
  }
}