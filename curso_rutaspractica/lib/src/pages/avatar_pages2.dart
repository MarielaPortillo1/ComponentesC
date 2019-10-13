import 'package:flutter/material.dart';

class AvatarPAGES extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar2'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          ),
          Container(
           padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              child: Text('SL'),
             backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1018943227791982592/URnaMrya.jpg'),
              radius: 25.0,
            ),
          )
        ],
      ),
      body: Center(
    child: FadeInImage(
    image: NetworkImage('https://pbs.twimg.com/profile_images/1018943227791982592/URnaMrya.jpg'),
    placeholder: AssetImage('assets/jar-loading.gif'),
    fadeInDuration: Duration(milliseconds: 10),
    ),
    ),
    );
    
  }
}

