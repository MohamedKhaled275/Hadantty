import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> fetchData() async {
  final String apiUrl = 'http://sayedazp-001-site1.gtempurl.com/api/Incubator';
  final String token = 'YOUR_API_TOKEN';

  final response = await http.get(
    Uri.parse(apiUrl),
    headers: {'Authorization': 'Bearer $token'},
  );

  if (response.statusCode == 200) {
    final jsonData = json.decode(response.body);
    final data = jsonData['data'];
    return data;
  } else {
    throw Exception('Failed to fetch data');
  }
}
