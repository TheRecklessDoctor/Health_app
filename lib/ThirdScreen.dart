import 'package:flutter/material.dart';


class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create a new record"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          children: <Widget>[
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
