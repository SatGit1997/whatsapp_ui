import 'package:flutter/material.dart';

class HomePageWhatsapp extends StatelessWidget {

  List<Map<String, dynamic> > mData =
  [
    {
      'name' : 'Aman',
      'img'   : 'assets/image/whatsapp.png',
      'time'  : '09:20 AM',
      'msg'   : 'Hi..',
      'unread': '1'
    },
    {
      'name' : 'Mukesh',
      'img'   : 'assets/image/whatsapp.png',
      'time'  : '07:45',
      'msg'   : 'Good Morning',

    },
    {
      'name' : 'Suresh',
      'img'   : 'assets/image/whatsapp.png',
      'time'  : 'Yesterday',
      'msg'   : 'Welcome',

    },
    {
      'name' : 'Sachin',
      'img'   : 'assets/image/whatsapp.png',
      'time'  : '22/10/24',
      'msg'   : 'Ok',
      'unread': '2'
    },
    {
      'name' : 'Shilpa',
      'img'   : 'assets/image/whatsapp.png',
      'time'  : '19/09/24',
      'msg'   : 'Hi..',
      'unread': '3'
    },
    {
      'name' : 'Ansh',
      'img'   : 'assets/image/whatsapp.png',
      'time'  : '15/09/24',
      'msg'   : 'Happy Birthday',

    },
    {
      'name' : 'Utkarsh',
      'img'   : 'assets/image/whatsapp.png',
      'time'  : '01/09/24',
      'msg'   : 'Good night',
      'unread': '1'

    },
    {
      'name' : 'Anjali',
      'img'   : 'assets/image/whatsapp.png',
      'time'  : '27/08/24',
      'msg'   : 'thank you',
      'unread': '5'
    },
    {
      'name' : 'Rajesh',
      'img'   : 'assets/image/whatsapp.png',
      'time'  : '26/08/24',
      'msg'   : 'Sorry',

    },
    {
      'name' : 'Sanjana',
      'img'   : 'assets/image/whatsapp.png',
      'time'  : '27/09/24',
      'msg'   : 'Ok',

    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.green),),

      ),
      body: ListView(
        children: [
          Column(
            children: mData.map((element){
              return Container(
                padding:EdgeInsets.all(11),
                margin: EdgeInsets.all(5),
                height: 90,
                width: double.infinity,
                decoration: myDecoration(),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(element['img'],),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(element['name'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            ],
                          ),
                          Text(element['msg']),

                          Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.black12,
                          )
                        ],
                      ),
                    ),
                    Column(

                      children: [
                        element['unread']!=null? Text(element['time'],
                          style: TextStyle(color: Colors.green),):
                        Text(element['time']),
                        element['unread']!=null?   Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                          child: Center(child:Text(element['unread'].toString(),style: TextStyle(color: Colors.white),)),
                        ):Container()
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      )
    );
  }
}

BoxDecoration myDecoration() {
  return BoxDecoration
    (
    borderRadius: BorderRadius.circular(51)
    );
  
  
  

}