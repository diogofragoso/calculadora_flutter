
// 50
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


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
  String operacao = '';

  String numero = '';

  void calcular(String tecla){
    
       
   switch(tecla){

    case 'ac':       
      numero = '';   
      operacao ='' ;
    break;    
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
    case '.':
          setState(() {                             
              numero+=tecla;   
              // if(numero.contains('.')){
              //         // double numeroD = double.parse(numero);
              //         // numero = numeroD.toString();
              //   }else{
              //     int numeroI = int.parse(numero);
              //     numero = numeroI.toString();
              //   }      
           });


    case '/':
    case '*':
    case '-':
         String numeroModificado = numero.replaceAll('-', '');
            
            primeiroValor = double.parse(numeroModificado);
            numero = '';
            operacao = tecla;
            setState(() {
              numero;
            });
    break;

    case '+':
    
            String numeroModificado = numero.replaceAll('+', '');
            
            primeiroValor = double.parse(numeroModificado);
            numero = '';
            operacao = tecla;
            setState(() {
              numero;
            });


    break;

    case '=':
    double resultado=0.0;

  if(numero==''){
    numero='0';

  }else{

    if(operacao=='+'){   
      
      resultado = primeiroValor + double.parse(numero);
      numero = resultado.toString().replaceFirst(RegExp(r'\.?0*$'), '');     

      setState(() {
        numero;
      });
    }
     if(operacao=='-'){   
      
      resultado = primeiroValor - double.parse(numero);
      numero = resultado.toString().replaceFirst(RegExp(r'\.?0*$'), '');     

      setState(() {
        numero;
      });
    }




  }

    break;
         

   }
  
     
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
                // numero = '0';
                calcular('ac');
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