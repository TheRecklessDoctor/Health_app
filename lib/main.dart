import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'ThirdScreen.dart';

void main() {
  runApp(new BaseApp());
}


class BaseApp extends StatelessWidget{
   @override
    Widget build(BuildContext context){
     return MaterialApp(
       title: "MyCare Pass",
       home: myStatefulWidget(),
     );
   }
}




class myStatefulWidget extends StatefulWidget {
  @override
  _myStatefulWidgetState createState() => _myStatefulWidgetState();
}

class _myStatefulWidgetState extends State<myStatefulWidget> {
  //textcontroller, which gives the entered text for proessing.
  final mycontroller = TextEditingController();

  @override
  void dispose(){
    mycontroller.dispose();
    super.dispose();
  }

  void _openThirdScreen(BuildContext context){
    Navigator.push(context,
    MaterialPageRoute(builder: (BuildContext context)=> ThirdScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyCarePass"),
        centerTitle: true,
      ),
      body:Center(
        child:Column(
          children: <Widget>[
            Image.asset("assets/images/Logo_edited.jpg"),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  //textfield to enter the users id from which he/she can access their data.
                  controller : mycontroller,
                )
        ),
            //button that displays details based on entered id number.
            ElevatedButton(onPressed: (){
              _sendDataToSecondScreen(context);
            }, child: Text(
              "Show my health record",
            ))

          ],
        ),

      ),
      //button that enables the user to create a new record only(if he or she doesnt have a record)
      floatingActionButton: FloatingActionButton (
        onPressed:(){
          _openThirdScreen(context);
        },
        child:Icon(Icons.add),
      ),

      //     Center(
    //   child:
    );
  }
  //function to send the entered id to a new page in order to get the particular paitents data
  void _sendDataToSecondScreen(BuildContext context){
    String dataToSend = mycontroller.text;
    Navigator.push(context,
    MaterialPageRoute(builder:( BuildContext context) => SecondScreen(id: dataToSend)));
  }
}
//screen number 2
class SecondScreen extends StatefulWidget {
  final String id;
  SecondScreen({Key key,@required this.id}): super(key:key);
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display Records'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            //relevant detail buttons
            //have to add more once sql lite and backend logic is figured out
            //have to code the on pressed function, which has a base template common to all buttons but
            // has different search and show requests.
            ElevatedButton(onPressed: (){}
            , child: Text(
              "Patient details",
            )),
            ElevatedButton(onPressed: (){

            }, child: Text(
              "Contact Details",
            )),
            ElevatedButton(onPressed: (){

            }, child: Text(
              "Allergies/Adverse drug reaction",
            )),ElevatedButton(onPressed: (){

            }, child: Text(
              "Immunisation Status",
            )),
            ElevatedButton(onPressed: (){}, child:
            Text(
              "Pregnancy details",
            )),

            ElevatedButton(onPressed: (){}, child:
            Text(
              "BreastFeeding details",
            )),
            ElevatedButton(onPressed: (){}, child:
            Text(
              "Social History details",
            )),
            ElevatedButton(onPressed: (){}, child:
            Text(
              "Past Medical History",
            )),
            ElevatedButton(onPressed: (){}, child:
            Text(
              "Medications and Supplements",
            )),



          ],
        )

      ),
    );
  }
}
