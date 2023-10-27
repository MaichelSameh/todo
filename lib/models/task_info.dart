import 'package:intl/intl.dart';

class TaskInfo {
  late DateTime _createdAt;
  late DateTime _date;
  late String _description;
  late String _id;
  late String _name;
  late int _priority;

  TaskInfo({
    required DateTime createdAt,
    required DateTime date,
    required String description,
    required String id,
    required String name,
    required int priority,
  }) {
    _createdAt = createdAt;
    _date = date;
    _description = description;
    _id = id;
    _name = name;
    _priority = priority;
  }

  TaskInfo.fromMap(Map<String, dynamic> map) {
    _createdAt = DateTime.parse(map["created_at"]);
    _date = DateTime.parse(map["date"]);
    _description = map["description"];
    _id = map["id"];
    _name = map["name"];
    _priority = map["priority"];
  }

  DateTime get createdAt => _createdAt;
  DateTime get date => _date;
  String get description => _description;
  String get id => _id;
  String get name => _name;
  int get priority => _priority;

  Map<String, dynamic> get toMap => {
        "created_at": DateFormat("yyyy-MM-dd HH:mm").format(createdAt),
        "date": DateFormat("yyyy-MM-dd HH:mm").format(date),
        "description": description,
        "name": name,
        "priority": priority,
      };

  @override
  String toString() {
    return 'TaskInfo(_createdAt: $_createdAt, _date: $_date, _description: $_description, _id: $_id, _name: $_name, _priority: $_priority)';
  }
}
