class Person {
  String email;
  String name;
  String image;

  Person({required this.email, required this.name, required this.image});
}

class TeamMember {
  final String name;
  final String image;

  TeamMember({required this.name, required this.image});
}

class Schedule {
  String title;
  String dateStart;
  String dateEnd;
  String timeStart;
  String timeEnd;
  List<Person> teams;
  String office;

  Schedule({
    required this.title,
    required this.dateStart,
    required this.dateEnd,
    required this.timeStart,
    required this.timeEnd,
    required this.teams,
    required this.office,
  });

  Map<String, dynamic> toJson() => {
        'title': title,
        'dateStart': dateStart,
        'dateEnd': dateEnd,
        'timeStart': timeStart,
        'timeEnd': timeEnd,
        'teams': teams,
        'office': office,
      };

  static Schedule fromJson(Map<String, dynamic> json) => Schedule(
      title: json['title'] ?? 'No Title',
      dateStart: json['dateStart'] ?? '',
      dateEnd: json['dateEnd'] ?? '',
      timeStart: json['timeStart'] ?? '',
      timeEnd: json['timeEnd'] ?? '',
      teams: json['teams'] ?? [],
      office: json['office'] ?? 'Unknown Office',
    );
}