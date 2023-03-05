import 'dart:convert';

List<ScheduleAdzan> scheduleAdzanFromJson(String str) =>
    List<ScheduleAdzan>.from(
        json.decode(str).map((x) => ScheduleAdzan.fromJson(x)));

String scheduleAdzanToJson(List<ScheduleAdzan> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ScheduleAdzan {
  ScheduleAdzan({
    required this.tanggal,
    required this.imsyak,
    required this.shubuh,
    required this.terbit,
    required this.dhuha,
    required this.dzuhur,
    required this.ashr,
    required this.magrib,
    required this.isya,
  });

  final DateTime tanggal;
  final String imsyak;
  final String shubuh;
  final String terbit;
  final String dhuha;
  final String dzuhur;
  final String ashr;
  final String magrib;
  final String isya;

  ScheduleAdzan copyWith({
    DateTime? tanggal,
    String? imsyak,
    String? shubuh,
    String? terbit,
    String? dhuha,
    String? dzuhur,
    String? ashr,
    String? magrib,
    String? isya,
  }) =>
      ScheduleAdzan(
        tanggal: tanggal ?? this.tanggal,
        imsyak: imsyak ?? this.imsyak,
        shubuh: shubuh ?? this.shubuh,
        terbit: terbit ?? this.terbit,
        dhuha: dhuha ?? this.dhuha,
        dzuhur: dzuhur ?? this.dzuhur,
        ashr: ashr ?? this.ashr,
        magrib: magrib ?? this.magrib,
        isya: isya ?? this.isya,
      );

  factory ScheduleAdzan.fromJson(Map<String, dynamic> json) => ScheduleAdzan(
        tanggal: DateTime.parse(json["tanggal"]),
        imsyak: json["imsyak"],
        shubuh: json["shubuh"],
        terbit: json["terbit"],
        dhuha: json["dhuha"],
        dzuhur: json["dzuhur"],
        ashr: json["ashr"],
        magrib: json["magrib"],
        isya: json["isya"],
      );

  Map<String, dynamic> toJson() => {
        "tanggal":
            "${tanggal.year.toString().padLeft(4, '0')}-${tanggal.month.toString().padLeft(2, '0')}-${tanggal.day.toString().padLeft(2, '0')}",
        "imsyak": imsyak,
        "shubuh": shubuh,
        "terbit": terbit,
        "dhuha": dhuha,
        "dzuhur": dzuhur,
        "ashr": ashr,
        "magrib": magrib,
        "isya": isya,
      };
}
