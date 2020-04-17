import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'output.dart';
import 'saya.dart';

class InputAPK extends StatefulWidget {
  @override
  _InputAPKState createState() => _InputAPKState();
}

class _InputAPKState extends State<InputAPK> {
  int kecepatan = 0;
  int jarak = 0;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
       // backgroundColor: Colors.blue
       // [100],
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(
            Icons.home,
           // color: Colors.orange,
          ),
          title: Text('Menghitung Waktu'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person_outline),
             // color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyProfil()),
                );
              },
            )
          ],
          bottom: PreferredSize(
              child: Container(
                //color:Colors.purple[500],
                height: 4.0,
              ),
              preferredSize: null
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child:
                Image.asset('hitung.jpg', width: 150,
                  fit: BoxFit.fitWidth,
                ),
              ),

              Container(
                padding: EdgeInsets.all(12),
               // color: Colors.blue[500],
                child: Column(
                  children: <Widget>[
                    Text('Program Untuk Menghitung Waktu', style: TextStyle(//color: Colors.white,
                        fontSize: 17.0,fontWeight: FontWeight.w500),),
                    Text('Untuk Menuju Ke Jarak Tertentu', style: TextStyle(//color: Colors.white,
                        fontSize: 17.0,fontWeight: FontWeight.w500),),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 200),
                padding: EdgeInsets.all(10),
                //color: Colors.green[500],
                child: Text('MASUKAN INPUTAN ANGKA :', textAlign: TextAlign.center, style: TextStyle(//color: Colors.yellow,
                    fontSize: 17.0,fontWeight: FontWeight.w500),),

              ),

              Container(
                  margin: EdgeInsets.only(top: 5),
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (txt) {
                            setState(() {
                              kecepatan = int.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 4,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                              labelText: "kecepatan",
                              border: OutlineInputBorder( borderRadius: BorderRadius.circular(20.0) ),
                              hintText: 'kecepatan'
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          onChanged: (txt) {
                            setState(() {
                              jarak = int.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 4,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                              labelText: "jarak",
                              border: OutlineInputBorder( borderRadius: BorderRadius.circular(20.0) ),
                              hintText: 'jarak'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )
              ),

              Container(
                //height: double.infinity,
                margin: EdgeInsets.only(left: 70,right: 70,bottom: 20),

                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OutputAPK(nkecepatan: kecepatan, njarak: jarak)),
                    );
                  },
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  //color: Colors.white,

                  child: Text(
                    'HITUNG',
                    style:
                    TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 45,
           // color: Colors.red,
            alignment: Alignment.center,
            child: Text(
              'Adrian',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  //color: Colors.black
              ),
            ),
          ),
          //elevation: 0,
        ),
      );
  }
}