import 'package:flutter/material.dart';
import 'package:rpm_provider/Screens/Availability/Model/time_list_model.dart';

class SetAvailProvider extends ChangeNotifier {
//   late List<TaskListModel> taskList=[];
//   addTastInList(){
//   print(taskList);
//   TaskListModel taskListModel= TaskListModel("from${taskList.length}", "this is task ${taskList.length}");
//   taskList.add(taskListModel);
//   notifyListeners();
// }
  selectButton(int i, bool val) {
    time[i]['select'] = val;
    notifyListeners();
    print(val);
  }

  List time = [
    {'txt': 'Sunday', 'select': false},
    {'txt': 'Monday', 'select': false},
    {'txt': 'Tuesday', 'select': false},
    {'txt': 'Wednesday', 'select': false},
    {'txt': 'Thursday', 'select': false}
  ];
}
