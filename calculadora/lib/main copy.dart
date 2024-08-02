

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

  double primeiroValor = 0.0;
  double segundoValor = 0.0;

  String numero = '';

  void calcular(String tecla){
  
     setState((){      
      numero +=tecla;     
     }
     );


     setState(() {       
       if(numero.contains('.')){
          // double numeroD = double.parse(numero);
          // numero = numeroD.toString();
       }else{
        // int numeroI = int.parse(numero);
        // numero = numeroI.toString();
       }


        if(numero.contains('+')){          
          
          String numeroModificado = numero.replaceAll('+','');         

          primeiroValor = double.parse(numeroModificado);
          numero = '';
          print(primeiroValor);
         
        }

        if(numero.contains('=')){
        String numeroModificado = numero.replaceAll('=', '');
        segundoValor = double.parse(numeroModificado);
        primeiroValor +=segundoValor;
        
        
        
        numero = primeiroValor.toString();



        }



     });
  
     
  }

  

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
          Container(
             decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.3),
              ),
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.end,                         
              
              children: [
              SizedBox(
                height: 100,
                child: Row(
                  
                  children: [
                    Container(
                     
                      
                      child: Text(numero, style: TextStyle(fontSize: 40,), )),
                  ],
                ),
              ),
            
            ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,                        
            children: [            
            GestureDetector(
              onTap: () {
                  setState(() {                    
                numero = '';
                  });
              },
              child: Text('AC', style: TextStyle(fontSize: 40,),)),

            Text('', style: TextStyle(fontSize: 40,),),
            Text('', style: TextStyle(fontSize: 40,),),


            Text('<-', style: TextStyle(fontSize: 40,),),

          ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
            children: [
            
            GestureDetector(
              onTap:(){
                
                calcular('7');
                },
              child: Text('7', style: TextStyle(fontSize: 40,),)              
              
              ),

            GestureDetector(
              onTap: () => calcular('8'),
              child: Text('8', style: TextStyle(fontSize: 40,),)),

            GestureDetector(
              onTap: () => calcular('9'),
              child: Text('9', style: TextStyle(fontSize: 40,),)),

            GestureDetector(
              onTap: () => calcular('/'),
              child: Text('/', style: TextStyle(fontSize: 40,),)),

          ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
            children: [
            
            GestureDetector(
              onTap: () => calcular('4'),
              child: Text('4', style: TextStyle(fontSize: 40,),)),

             GestureDetector(
              onTap: () => calcular('5'),
              child: Text('5', style: TextStyle(fontSize: 40,),)),

            GestureDetector(
              onTap: () => calcular('6'),
              child: Text('6', style: TextStyle(fontSize: 40,),)),

            GestureDetector(
              onTap: () => calcular('*'),
              child: Text('*', style: TextStyle(fontSize: 40,),)),

          ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
            children: [
            
            GestureDetector(
              onTap: () => calcular('1'),
              child: Text('1', style: TextStyle(fontSize: 40,),)),

            GestureDetector(
              onTap: () => calcular('2'),
              child: Text('2', style: TextStyle(fontSize: 40,),)),

            GestureDetector(
              onTap: () => calcular('3'),
              child: Text('3', style: TextStyle(fontSize: 40,),)),

            GestureDetector(
              onTap: () => calcular('-'),
              child: Text('-', style: TextStyle(fontSize: 40,),)),

          ],),
            
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
            children: [
            
            GestureDetector(
              onTap: () => calcular('0'),
              child: Text('0', style: TextStyle(fontSize: 40,),)),

            GestureDetector(
              onTap: () => calcular('.'),
              child: Text('.', style: TextStyle(fontSize: 40,),)),

            GestureDetector(
              onTap: () => calcular('='),
              child: Text('=', style: TextStyle(fontSize: 40,),)),

            GestureDetector(
              onTap: () => calcular('+'),
              child: Text('+', style: TextStyle(fontSize: 40,),)),

          ],),




        ],),






      ),
      
      
      );


      
    

    









  }
}