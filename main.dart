import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';


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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyCarePass")
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
      body: Center(
        child: Column(
          children: <Widget>[
            //relevant detail buttons
            //have to add more once sql lite and backend logic is figured out
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


          ],
        )

      ),
    );
  }
}
