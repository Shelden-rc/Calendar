import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];


  final _myBox = Hive.box('mybox');

  // Если открыли первый раз
  void createInitialData() {
    toDoList = [
      ["Чтение", false],
      ["Заряжка", false],
    ];
  }

  // Загрузка с бд
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // Обновление бд
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
