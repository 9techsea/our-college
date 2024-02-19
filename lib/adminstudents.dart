import 'package:flutter/material.dart';

class admst extends StatefulWidget {
  const admst({super.key});

  @override
  State<admst> createState() => _admstState();
}

class _admstState extends State<admst> {
  List k=[];
  Map<String,dynamic> student1={
    "name":"dinesh",
    "student_id":"36",
    "Year":"3rd",
    "Grade":"A",
    "email":"din@gmail.com",
    "pn":"din@gmail.com",
    "dob":"12-23-4",
    "gender":"male",
    "Date":"23-09-2003"


  };
    Map<String,dynamic> student2={
   "name":"ram",
    "student_id":"36",
    "Year":"3rd",
    "Grade":"A",
    "email":"din@gmail.com",
    "pn":"din@gmail.com",
    "dob":"12-23-4",
    "gender":"male",
    "Date":"23-09-2003"
  };
  @override
  void initState() {
    // TODO: implement initState
    k=[student1,student2];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DataTable(
      
      columns: 
    [
      DataColumn(label: Text('Name')),
      DataColumn(label: Text('Student id')),
      DataColumn(label: Text('Year/class')),
      DataColumn(label: Text('Grade')),
      DataColumn(label: Text('Email')),
       DataColumn(label: Text('phone number')),
      DataColumn(label: Text('Data of birth')),
      DataColumn(label: Text('Gender')),
      DataColumn(label: Text('Date'))
    ], rows: [
      DataRow(cells: [
        DataCell(Text('$k["name"]')),
        DataCell(Text('24')),
        DataCell(Text('3rd')),
        DataCell(Text('A')),
        DataCell(Text('dinesh23@gmail.com')),
        DataCell(Text('123456789')),
         DataCell(Text('10-2-2003')),
        DataCell(Text('male')),
        DataCell(Text('23-10-2021')),

      ])
    ]);
     
  }
}