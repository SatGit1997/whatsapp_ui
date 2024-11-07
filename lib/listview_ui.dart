import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  List<Map<String, dynamic>> mData =[
    {
      "color" : Colors.orange,
      'name'  : "Raman",
      'time'  : '10:20  AM'
    },
    {
      "color" : Colors.green,
      'name'  : "Jaisingh",
      'time'  : '10:20  PM'
    },
    {
      "color" : Colors.lime,
      'name'  : "Raju",
      'time'  : '10:45  PM'
    },
    {
      "color" : Colors.amber,
      'name'  : "Sheela",
      'time'  : '11:20  AM'
    },
    {
      "color" : Colors.pink,
      'name'  : "Raman",
      'time'  : '10:20  AM'
    },
    {
      "color" : Colors.orange,
      'name'  : "Raman",
      'time'  : '03:20  PM'
    },
    {
      "color" : Colors.yellow,
      'name'  : "Deepak",
      'time'  : '08:20  AM'
    },
    {
      "color" : Colors.purpleAccent,
      'name'  : "Raman",
      'time'  : '12:20  PM'
    },
    {
      "color" : Colors.orange,
      'name'  : "Ram",
      'time'  : '09:20  AM'
    },
    {
      "color" : Colors.green,
      'name'  : "Kishan",
      'time'  : '10:24  PM'
    },
    {
      "color" : Colors.orange,
      'name'  : "Mukesh",
      'time'  : '11:20  AM'
    },
    {
      "color" : Colors.blueGrey,
      'name'  : "Raghv",
      'time'  : '10:40  AM'
    },{
      'color' : Colors.cyan,
      'name'  : 'Sateesh',
      'time'  : '07:12 PM'
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Listview')),

      ),
      body:SingleChildScrollView(
        child: Column(
          children: mData.map((element){
            return Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(11),
              width: double.infinity,
              height: 100,
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(element['name'] ?? 'No name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(element['time']),
                    ],
                  ),

                  Container()
                ],
              ),
              decoration: BoxDecoration(
                color: element['color'],
                borderRadius: BorderRadius.circular(11)
              ),
            );
          }).toList()
          ,
        ),
      ),
    );
  }
}