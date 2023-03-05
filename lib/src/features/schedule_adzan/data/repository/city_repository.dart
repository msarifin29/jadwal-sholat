import 'dart:convert';

import 'package:my_project/src/config/config.dart';

class CityRepository {
  static Future<List<String>> fetchCity() async {
    final ApiClient client = ApiClient();

    final response = await client.get(Uri.parse(EndPoint.city));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List;
      return data.map((e) => e as String).toList();
    }
    throw Exception('error fetching city');
  }
}
