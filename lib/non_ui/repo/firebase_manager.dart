import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:morphosis_flutter_demo/non_ui/modal/task.dart';

class FirebaseManager {
  static FirebaseManager _one;

  static FirebaseManager get shared =>
      (_one == null ? (_one = FirebaseManager._()) : _one);
  FirebaseManager._();

  Future<void> initialise() => Firebase.initializeApp();

  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  //TODO: change collection name to something unique or your name
  CollectionReference get tasksRef =>
      FirebaseFirestore.instance.collection('tasks');

  //TODO: replace mock data. Remember to set the task id to the firebase object id
  List<Task> get tasks => mockData.map((t) => Task.fromJson(t)).toList();

  //TODO: implement firestore CRUD functions here
  void addTask(Task task) {
    tasksRef.add(task.toJson());
  }
}

List<Map<String, dynamic>> mockData = [
  {"id": "1", "title": "Task 1", "description": "Task 1 description"},
  {
    "id": "2",
    "title": "Task 2",
    "description": "Task 2 description",
    "completed_at": DateTime.now().toIso8601String()
  }
];
