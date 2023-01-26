class Dummy {
  String name;
  int id;
  DateTime date;
  String study;
  Dummy({
    required this.name,
    required this.id,
    required this.date,
    required this.study,
  });

  factory Dummy.fromJson(Map<String, dynamic> json) => Dummy(
        name: json["name"],
        id: json["id"],
        date: DateTime.parse(json["date"]),
        study: json["study"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "study": study,
      };
}
