import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class clock extends StatefulWidget {
  const clock({super.key});

  @override
  State<clock> createState() => _clockState();
}

class _clockState extends State<clock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Stack(
        children:[
        cantainer(
          constraints:BoxConstraints.expand(),
          decoration:BoxDecoration(
            shape:  BoxShape.circle,
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(0, 27, 118, 198),
                Color.fromARGB(0, 196, 24, 190),
              ]

            ),
            boxShadow: [
              BoxShadow(
                color:  Color.(0xFF3F6080).withAlpha(.2),
                blurRadius: 32,
                offset: const Offset(40,20),
              ),
               const BoxShadow(
                color: Color(0xFFFFFFFF),
                blurRadius: 32,
                offset: Offset(-20,-10),
               ),
            ]
          ),
        )
      ],),
    );
    
  }
  
  
 
}

