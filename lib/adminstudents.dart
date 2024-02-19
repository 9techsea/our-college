import 'package:flutter/material.dart';

class admst extends StatefulWidget {
  const admst({super.key});

  @override
  State<admst> createState() => _admstState();
}

class _admstState extends State<admst> {
  List k=[];
  TextEditingController n1=TextEditingController();
    TextEditingController n2=TextEditingController();
      TextEditingController n3=TextEditingController();
        TextEditingController n4=TextEditingController();
          TextEditingController n5=TextEditingController();
            TextEditingController n6=TextEditingController();
              TextEditingController n7=TextEditingController();
                TextEditingController n8=TextEditingController();
                  TextEditingController n9=TextEditingController();
  

  @override
  void initState() {
    // TODO: implement initState
    k=[
      {
   "name":"ram",
    "student_id":"36",
    "Year":"3rd",
    "Grade":"A",
    "email":"din@gmail.com",
    "pn":"din@gmail.com",
    "dob":"12-23-4",
    "gender":"male",
    "Date":"23-09-2003"
  },
  {
    "name":"dinesh",
    "student_id":"36",
    "Year":"3rd",
    "Grade":"A",
    "email":"din@gmail.com",
    "pn":"din@gmail.com",
    "dob":"12-23-4",
    "gender":"male",
    "Date":"23-09-2003"


  },
   {
    "name":"sham",
    "student_id":"36",
    "Year":"3rd",
    "Grade":"A",
    "email":"din@gmail.com",
    "pn":"din@gmail.com",
    "dob":"12-23-4",
    "gender":"male",
    "Date":"23-09-2003"


  },
   {
    "name":"asri",
    "student_id":"36",
    "Year":"3rd",
    "Grade":"A",
    "email":"din@gmail.com",
    "pn":"din@gmail.com",
    "dob":"12-23-4",
    "gender":"male",
    "Date":"23-09-2003"


  },
   {
    "name":"mahesh",
    "student_id":"36",
    "Year":"3rd",
    "Grade":"A",
    "email":"din@gmail.com",
    "pn":"din@gmail.com",
    "dob":"12-23-4",
    "gender":"male",
    "Date":"23-09-2003"


  },
   {
    "name":"ganesh",
    "student_id":"36",
    "Year":"3rd",
    "Grade":"A",
    "email":"din@gmail.com",
    "pn":"din@gmail.com",
    "dob":"12-23-4",
    "gender":"male",
    "Date":"23-09-2003"


  },
   {
    "name":"rithsh",
    "student_id":"36",
    "Year":"3rd",
    "Grade":"A",
    "email":"din@gmail.com",
    "pn":"din@gmail.com",
    "dob":"12-23-4",
    "gender":"male",
    "Date":"23-09-2003"


  },
   {
    "name":"sandeep",
    "student_id":"36",
    "Year":"3rd",
    "Grade":"A",
    "email":"din@gmail.com",
    "pn":"din@gmail.com",
    "dob":"12-23-4",
    "gender":"male",
    "Date":"23-09-2003"


  },
   {
    "name":"kalyan",
    "student_id":"26",
    "Year":"3rd",
    "Grade":"A",
    "email":"din@gmail.com",
    "pn":"din@gmail.com",
    "dob":"12-23-4",
    "gender":"male",
    "Date":"23-09-2003"


  },
   {
    "name":"yash",
    "student_id":"36",
    "Year":"3rd",
    "Grade":"A",
    "email":"din@gmail.com",
    "pn":"din@gmail.com",
    "dob":"12-23-4",
    "gender":"male",
    "Date":"23-09-2003"


  },
  
    
  
    ];


 
    super.initState();
  }

  int index=-1;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      
       Container(
        
        child:SingleChildScrollView(
          scrollDirection:Axis.vertical,
          
          
        
          child:
          Container(
          child:SingleChildScrollView(
            scrollDirection:Axis.horizontal,
            child:
            
      DataTable(
        
      columns: 
    [

      DataColumn(label: ElevatedButton(child: Text('adding'), onPressed: (){
       showDialog(context: context, builder: (context)=>
       AlertDialog(
        actions: [
        
          TextField(
            controller: n1,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
            ),
           TextField(
            controller: n2,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'student id',
              ),
            ),
            TextField(
            controller: n3,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'year/class',
              ),
            ),
            TextField(
            controller: n4,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Grade',
              ),
            ),
            TextField(
            controller: n5,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            TextField(
            controller: n6,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'phone number',
              ),
            ),
            TextField(
            controller: n7,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Data of birth',
              ),
            ),
            TextField(
            controller: n8,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Gender',
              ),
            ),
            TextField(
            controller: n9,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Date',
              ),
            ),
            ElevatedButton(onPressed: (){
                setState(() {
                  index=-1;
                  k.add(
                    {
                      "name":n1.text,
            "student_id":n2.text,
    "Year":n3.text,
    "Grade":n4.text,
    "email":n5.text,
    "pn":n5.text,
    "dob":n6.text,
    "gender":n7.text,
    "Date":n8.text
  
                    }
                  
                  );
                  
                });

            }, child: Text('submit')),
             TextButton(
            onPressed: () => Navigator.pop(context, false), // passing false
            child: Text('Exit'),
          ),
        ],
        
       )
      
       );
      },)),
      DataColumn(label: Text("Name")),
      DataColumn(label: Text('Student id')),
      DataColumn(label: Text('Year/class')),
      DataColumn(label: Text('Grade')),
      DataColumn(label: Text('Email')),
       DataColumn(label: Text('phone number')),
      DataColumn(label: Text('Data of birth')),
      DataColumn(label: Text('Gender')),
      DataColumn(label: Text('Date'))
      
    ],
    
     rows: k.map((student) {
          index=index+1;
      return DataRow(cells: [
       DataCell(ElevatedButton(child:Icon(Icons.delete),onPressed: ((){
       print(student["name"]);
       String sk=student["name"];
       int ind=k.indexWhere((element) => element['name']==sk);
       print(ind);
       setState(() {
       k.removeAt(ind);
         index=-1;
       });
        
       }),)),
        DataCell(Text(student["name"] ?? " ")),
        DataCell(Text(student["student_id"] ?? "")),
        DataCell(Text(student["Year"] ?? "")),
        DataCell(Text(student["Grade"] ?? "")),
        DataCell(Text(student["email"] ?? "")),
        DataCell(Text(student["pn"] ?? "")),
        DataCell(Text(student["dob"] ?? "")),
        DataCell(Text(student["gender"] ?? "")),
        DataCell(Text(student["Date"] ?? "")),
      
      ]);
    }).toList(),
    ),
    ),
  
     ),

    
    ),
  
  
    ),
    
    );

  }
}