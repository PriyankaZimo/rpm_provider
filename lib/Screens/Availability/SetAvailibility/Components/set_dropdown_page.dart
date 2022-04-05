import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetDropDown extends StatefulWidget {
  Function onSelect;

  SetDropDown({required this.onSelect});

  @override
  State<SetDropDown> createState() => _SetDropDownState();
}

class _SetDropDownState extends State<SetDropDown> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Select Branch"), value: "Select Branch"),
      DropdownMenuItem(child: Text("Branch1"), value: "Branch1"),
      DropdownMenuItem(child: Text("Branch2"), value: "Branch2"),
    ];
    return menuItems;
  }

  var selectValue = "Select Branch";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 10, offset: Offset(0, 5))
          ],
          borderRadius: BorderRadius.circular(5)),
      child: DropdownButton(
          style: TextStyle(color: Colors.grey),
          underline: Container(),
          isExpanded: true,
          value: selectValue,
          items: dropdownItems,
          onChanged: (String? val) {
            setState(() {
              selectValue = val!;
              widget.onSelect(val);
            });
          }),
    );
  }
}
