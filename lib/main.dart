import 'dart:math';

import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

void main() {
  return runApp(
     MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,

        ),
        body: const DicePage(),
      ),
    )
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var left=6;
  var right=6;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: TextButton(onPressed: () {
              setState(() {
                randomizer();
                //left=Random().nextInt(6)+1;
                //right=left;
              });

             /* MotionToast(
                color: Colors.orange,
                description: "Left dice pressed",
                icon: Icons.notification_add_rounded,
              ).show(context);*/
            },
              child: Image.asset('assets/images/dice$left.png'),
            ),
          ),
          Expanded(
            flex:1,
            child: TextButton( onPressed: (){

              setState(() {
                //right=Random().nextInt(6)+1;
                randomizer();

              });
              /*MotionToast(
                color: Colors.orange,
                description: "Right dice pressed",
                icon: Icons.message,
              ).show(context);*/
            },
              child: Image.asset('assets/images/dice$right.png'),
            ),
          ),
        ],
      ),
    );
  }

  randomizer(){
    left=Random().nextInt(6)+1;
    right=Random().nextInt(6)+1;

  }
}


