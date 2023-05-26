import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:hadantty/models/Incubation.dart';

class IncubationApi {
  Future<List<Incubation>> GetAllIncubation() async {
    try {
      const String url = "http://sayedazp-001-site1.gtempurl.com/api/Incubator";
      var response = await http.get(Uri.parse(url));
      List<Incubation> Incubations = (json.decode(response.body))
          .map<Incubation>(
              (jsonIncubation) => Incubation.fromJson(jsonIncubation))
          .toList();

      return Incubations;
    } catch (e) {
      rethrow;
    }
  }
}
