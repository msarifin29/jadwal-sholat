import 'dart:convert';

import 'package:my_project/src/config/config.dart';
import 'package:my_project/src/features/schedule_adzan/domain/schedule_adzan.dart';

class ScheduleAdzanRepository {
  static Future<List<ScheduleAdzan>> fetchScheduleAdzan({
    required String city,
  }) async {
    final ApiClient client = ApiClient();

    final response = await client
        .get(Uri.parse("${EndPoint.adzanBaseUrl}/adzan/$city/2023/03.json"));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List;
      return data.map((e) {
        return ScheduleAdzan.fromJson(e);
      }).toList();
    }
    throw Exception('error fetching shedule adzan');
  }
}
