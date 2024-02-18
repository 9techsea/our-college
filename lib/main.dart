import 'package:flutter/material.dart';
import 'package:sample/change_password.dart';
import 'package:sample/change_password2.dart';
import 'package:sample/home.dart';
import 'package:sample/student_dashbord.dart';
void main()=>runApp(MaterialApp(
  home: Home(),debugShowCheckedModeBanner: false,
));
class Home extends StatelessWidget {
    var u=false;
    var a=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Login Now"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
    body:
    Container(
         padding: EdgeInsets.all(80),
      decoration: BoxDecoration(color: Colors.cyan,),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        child: Container(
       
          decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(30)),
            height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        child:Column(children: [
          Padding(padding:EdgeInsets.fromLTRB(50, 50, 10,0),
          child:
          Row(children: [
            

             ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                
                  // text color
                ),
              onPressed: (){
                Color:Colors.green;
                a=true;
             }, child:
             
          Text('admin')
          ),
          SizedBox(width: 20,),
          ElevatedButton(onPressed: (){

            u=true;
          }, child: 
          Text('user')
          ),
          ],),
         
          ),

        Padding(
        padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
        child: Column(
          children: <Widget>[
            
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                
                labelText: 'Email Id',
              ),
            )
          ],
        )
      ),

      Padding(
       padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
        child: Column(
          children: <Widget>[
            TextField(
              obscureText: true,
              decoration: InputDecoration(
               
                labelText: 'Password',
              ),
            )
          ],
        )
      ),
             SizedBox(height: 10,),
         InkWell(

        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>ChangePassword()));
        },
        child:Container(
      child: Text('forgot password?',style:TextStyle(color: const Color.fromARGB(255, 24, 136, 228)),),
     ),
      ),
            SizedBox(height: 15,),
       ElevatedButton(
         
          child: Text('Login'),
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
            textStyle: const TextStyle(
                color: Colors.white,
                 fontSize: 20, 
                 fontStyle: FontStyle.normal),
          ),
          
          onPressed: () {
            if(a==true)
            {
              print("admin");
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
                a=false;
            }
            else if(u==true)
            {
            
              print('user');
              
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Sdash()));
              u=false;
            }
            else{
          
            }
            
          },
          
        ),
        

        ],)
        ),
    ),
    

    );
  }
}