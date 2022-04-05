class TaskListModel {
  String from;
  String to;

  String get getTitle => from;

  String get getDetails => to;

  TaskListModel(this.from, this.to);
}
