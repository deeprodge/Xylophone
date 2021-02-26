import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Expanded buildKey(Color color,int noteN){
    final player=AudioCache();
    double padd = 10*noteN.toDouble();
    return Expanded(

        child: GestureDetector(
          onTap: (){
            player.play('note$noteN.wav');
          },
          child: Stack(
            alignment: Alignment.center,
            children: [

              Container(
                width: double.infinity,
                //height: 50,
                //padding: EdgeInsets.fromLTRB(padd, 4, padd, 4),
                margin: EdgeInsets.fromLTRB(padd, 4, padd, 4),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                ),
          ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(padd, 8, padd, 4),
                          width: 40.0,
                          height: 40.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      Container(
                        margin: EdgeInsets.fromLTRB(padd, 8, padd, 4),
                        width: 40.0,
                        height: 40.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ),


            ],
          ),
        ),

    );
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: double.infinity,
                    width: 20,
                    //padding: EdgeInsets.fromLTRB(padd, 4, padd, 4),
                    //margin: EdgeInsets.fromLTRB(padd, 8, padd, 4),
                    decoration: BoxDecoration(
                      color: Colors.orange[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: double.infinity,
                    width: 20,
                    //padding: EdgeInsets.fromLTRB(padd, 4, padd, 4),
                    //margin: EdgeInsets.fromLTRB(padd, 8, padd, 4),
                    decoration: BoxDecoration(
                      color: Colors.orange[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 15,),
                  buildKey(Colors.red, 1),
                  buildKey(Colors.orange, 2),
                  buildKey(Colors.yellow, 3),
                  buildKey(Colors.green, 4),
                  buildKey(Colors.teal, 5),
                  buildKey(Colors.blue, 6),
                  buildKey(Colors.purple, 7),
                  SizedBox(height: 15,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
