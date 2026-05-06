// weather_page.dart
import 'package:flutter/material.dart';
import 'weather_service.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final WeatherService service = WeatherService();
  List<Map<String, dynamic>> weatherData = [];
  double currentTemp = 21.4;

  void getData() async {
    final data = await service.fetchWeather();

    setState(() {
      weatherData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Weather App"),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              "Current Weather",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(height: 10),

            const Icon(Icons.wb_sunny, color: Colors.yellow, size: 50),

            const SizedBox(height: 10),

            Text(
              "$currentTemp°C",
              style: const TextStyle(color: Colors.white, fontSize: 28),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: getData,
              child: const Text("Get Data"),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: Container(
                color: Colors.blue[800],
                child: ListView.builder(
                  itemCount: weatherData.length,
                  itemBuilder: (context, index) {
                    final item = weatherData[index];

                    return ListTile(
                      title: Text(
                        item["time"],
                        style: const TextStyle(color: Colors.white),
                      ),
                      trailing: Text(
                        "${item["temp"]}°C",
                        style: const TextStyle(color: Colors.white),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}