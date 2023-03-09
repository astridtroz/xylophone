import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: Homepage(),
    ),
  )
  )
  );
}
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
   void playsound(int sound)
   {
     final player = AudioPlayer();
     player.play(AssetSource('note$sound.wav'));
   }
  Expanded buildkey( {Color color: Colors.red, int soundNumber: 1})
   {
    return Expanded(
       child: TextButton(onPressed: (){
         playsound(soundNumber);
       }, child: Text(''),
         style: TextButton.styleFrom(
           backgroundColor: color,

         ),
       ),
     );
   }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
         buildkey(color:Colors.red, soundNumber: 1 ),
        buildkey(color:Colors.lightGreenAccent, soundNumber: 2),
        buildkey(color:Colors.pink, soundNumber: 3),
        buildkey(color:Colors.yellow, soundNumber: 4),
        buildkey(color:Colors.teal, soundNumber: 5),
        buildkey(color:Colors.deepOrange, soundNumber: 6),
        buildkey(color:Colors.purple, soundNumber: 7),
      ],
    );
  }
}


