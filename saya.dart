import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
          backgroundColor: Colors.blue,
          title: new Center(
            child: new Text("Profil"),
          )
      ),

      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.network(
                  'https://scontent.fdps4-1.fna.fbcdn.net/v/t1.0-1/p240x240/80432460_2556118238047314_6164140366049050624_o.jpg?_nc_cat=105&_nc_sid=dbb9e7&_nc_eui2=AeETg9ItiEa0IVkQn4B8RhUxoBMTFK7-lR-gExMUrv6VH2yfwWX7KbmW81GnKtJ_9-tHGEkN5XWCSOg7F2dk4To1&_nc_ohc=azZAURntz2sAX-ioZsF&_nc_ht=scontent.fdps4-1.fna&_nc_tp=6&oh=74b2b50140bc770db7fd25d5be1f8fb3&oe=5EBD0C5E',
                  width: 150.0,
                  height: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "Adrian Kuriniansyah", style: TextStyle(color: Colors.black, fontSize: 20.0, height: 2.0, fontWeight: FontWeight.bold,),),
              Text(
                "Pendidikan Teknik Informatika",style: TextStyle(color: Colors.black, fontSize: 15.0, height: 1.0,),),

              Card(
                margin: EdgeInsets.only(top: 40.0),
                child: Row(
                  children:<Widget> [
                    Expanded(
                      child: Card(
                          color: Colors.lightBlueAccent,
                          margin: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Column (
                            children: <Widget>[Icon(Icons.my_location, size: 110, color: Colors.green,),
                              Text('Singaraja',style: TextStyle(color: Colors.white, fontSize: 17.0, height: 2.0, fontWeight: FontWeight.bold,),)],
                          )
                      ),
                    ),

                    Expanded(
                      child: Card(
                          color: Colors.lightBlueAccent,
                          margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0,),
                          child: Column (
                            children: <Widget>[Icon(Icons.location_city, size: 110, color: Colors.blueAccent,),
                              Text('Undiksha',style: TextStyle(color: Colors.white, fontSize: 17.0, height: 2.0, fontWeight: FontWeight.bold,),)],
                          )
                      ),
                    )
                  ],
                ),
              ),

            ]
        ),
      ),

    );
  }
}