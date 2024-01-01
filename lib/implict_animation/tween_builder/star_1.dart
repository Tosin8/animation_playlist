import 'package:flutter/material.dart';
import 'dart:math' as math;

class Star_1 extends StatefulWidget {
  const Star_1({super.key});

  @override
  State<Star_1> createState() => _Star_1State();
}

class _Star_1State extends State<Star_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   title: const Text('Tween Builder'),
      // ),
      body: Stack(
        
        children:[ 
          Container(
            width: double.infinity, height: double.infinity,
            child: Image.asset('assets/images/galaxy.jpg', 
            fit: BoxFit.cover, 
            ),
          
          ), 
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, 
            horizontal: 30), 
            child: Column(
            children: [
               Center(
                 child: TweenAnimationBuilder(
                  tween: ColorTween(
                    begin: Colors.white, 
                    end: Colors.orange),
                  duration: const Duration(seconds: 2),
                  builder: (_, Color?color, __) 
                  {
                    return ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        color!,
                         BlendMode.multiply),
                      child: Image.asset('assets/images/sun.png'),
                   
                    ); 
                  },
                 ),
               )
               
               ]
               )) 
        ]));
        
                
                
              
               
              
    
                    
            
                    
          
    
  }
}

/* Using Tween for Color filtered. 
TweenAnimationBuilder(
tween: ColorTween(begin: Colors.white, end: Colors.orange), 
duration: Duration(seconds: 2), 
builder: (_, Color color, _) {
  return ColorFiltered(
    child: Image.asset(''), 
    colorFilter: ColorFilter.mode(color, BlendMode.modulate), 
  )
}, 
)
*/

 // Center(
              //     child: TweenAnimationBuilder(
              //   duration: const Duration(milliseconds: 300),
              //   tween: Tween<double>(begin: 0, end: 2 * math.pi),
              //   builder: (_, double angle, __) {
              //     return Transform.rotate(
              //       angle: angle,
              //       child: Image.network(
              //           'https://images.unsplash.com/photo-1671600939110-7b0625c25ef5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80'),
              //     );
              //   },
              // ))