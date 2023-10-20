import 'package:first_project/models/task_info.dart';
import 'package:hive/hive.dart';

class TaskServices {
  ///A function that takes task information and create a new
  ///task in the database with an auto-generated id then return the created task
  ///with the new data
  Future<TaskInfo> createTask({
    required String name,
    required String description,
    required int priority,
    required DateTime dateTime,
  }) async {
    //creating a record in the local database with the given task information
    int id = await Hive.box<Map<String, dynamic>>("tasks").add(
      TaskInfo(
        createdAt: DateTime.now(),
        date: dateTime,
        description: description,
        id: "",
        name: name,
        priority: priority,
      ).toMap,
    );

    //fetching task from the database and returning the result
    return TaskInfo(
      createdAt: DateTime.now(),
      date: dateTime,
      description: description,
      id: id.toString(),
      name: name,
      priority: priority,
    );
  }

  ///A function that fetch all the saved tasks from the database
  List<TaskInfo> getAll() {
    List<TaskInfo> result = <TaskInfo>[];
    for (dynamic key in Hive.box<Map<String, dynamic>>("tasks").keys) {
      result.add(
        TaskInfo.fromMap(
          {
            "id": key.toString(),
            ...Hive.box<Map<String, dynamic>>("tasks").get(key)!,
          },
        ),
      );
    }
    return result;
  }
}
