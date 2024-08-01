import 'package:flutter/material.dart';


void main(){
runApp(MyApp());


}



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(
          title: Center(child: Text('Calculadora', style: TextStyle(color: Colors.white, fontSize: 35), )),
            backgroundColor: Colors.amber,       
        
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            
            children: [
            Text('Display', style: TextStyle(fontSize: 40,), ),

          ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
            children: [
            
            Text('AC', style: TextStyle(fontSize: 40,),),
            Text('', style: TextStyle(fontSize: 40,),),
            Text('', style: TextStyle(fontSize: 40,),),
            Text('<-', style: TextStyle(fontSize: 40,),),

          ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
            children: [
            
            Text('7', style: TextStyle(fontSize: 40,),),
            Text('8', style: TextStyle(fontSize: 40,),),
            Text('9', style: TextStyle(fontSize: 40,),),
            Text('/', style: TextStyle(fontSize: 40,),),

          ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
            children: [
            
            Text('4', style: TextStyle(fontSize: 40,),),
            Text('5', style: TextStyle(fontSize: 40,),),
            Text('6', style: TextStyle(fontSize: 40,),),
            Text('*', style: TextStyle(fontSize: 40,),),

          ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
            children: [
            
            Text('4', style: TextStyle(fontSize: 40,),),
            Text('5', style: TextStyle(fontSize: 40,),),
            Text('6', style: TextStyle(fontSize: 40,),),
            Text('*', style: TextStyle(fontSize: 40,),),

          ],),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
            children: [
            
            Text('1', style: TextStyle(fontSize: 40,),),
            Text('2', style: TextStyle(fontSize: 40,),),
            Text('3', style: TextStyle(fontSize: 40,),),
            Text('-', style: TextStyle(fontSize: 40,),),

          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
            children: [
            
            Text('0', style: TextStyle(fontSize: 40,),),
            Text(',', style: TextStyle(fontSize: 40,),),
            Text('=', style: TextStyle(fontSize: 40,),),
            Text('+', style: TextStyle(fontSize: 40,),),

          ],),




        ],),






      ),
      
      
      );


      
    

    









  }
}