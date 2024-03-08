import 'dart:async';
import 'dart:io';
import 'dart:convert';

// Exercise 1
Future<String> fetchRandomQuote() async {
  await Future.delayed(Duration(seconds: 2));
  return "Dart is awesome!";
}

// Exercise 2
Future<void> downloadFile(String url) async {
  try {
    var httpClient = HttpClient();
    var request = await httpClient.getUrl(Uri.parse(url));
    var response = await request.close();

    if (response.statusCode == 200) {
      File file = File('downloaded_file.txt');
      await file.writeAsBytes(await response.fold<List<int>>([], (acc, chunk) => acc..addAll(chunk)));
      print('File downloaded successfully.');
    } else {
      print('Failed to download file. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error downloading file: $e');
  }
}

// Exercise 3
Future<List<String>> loadDataFromDatabase() async {
  return await Future.delayed(
    Duration(seconds: 3),
    () => ['Data1', 'Data2', 'Data3'],
  );
}

// Exercise 4
Future<void> fetchWeatherData() async {
  final apiKey = 'aa37302d4063446490e135520240803'; 
  final city = 'Addis'; 
  final url = 'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey';

  try {
    var httpClient = HttpClient();
    var request = await httpClient.getUrl(Uri.parse(url));
    var response = await request.close();

    if (response.statusCode == 200) {
      var data = jsonDecode(await response.transform(utf8.decoder).join());
      var temperature = data['main']['temp'];
      var weatherCondition = data['weather'][0]['main'];
      print('Temperature: $temperature°C');
      print('Weather Condition: $weatherCondition');
    } else {
      print('Failed to fetch weather data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching weather data: $e');
  }
}

void main() async {
  // Exercise 1
  var quote = await fetchRandomQuote();
  print('Random Quote: $quote');

  // Exercise 2
  var fileUrl ='https://raw.githubusercontent.com/exampleuser/example-repo/main/sample.txt';
  await downloadFile(fileUrl);

  // Exercise 3
  var data = await loadDataFromDatabase();
  print('Loaded data from database: $data');

  // Exercise 4
  await fetchWeatherData();
}
