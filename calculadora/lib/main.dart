
// 50
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:calculadora/componentes/btn.dart';


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
               List<String>parteNum = numero.split('/');
               if(parteNum[0]==''){
               }else{
                  primeiroValor = double.parse(parteNum[0]);
                  numero +=tecla;
                  operacao = tecla;
                  setState(() {
                     numero;
                  });
               } 
        
    break;



    case '*':
   List<String>parteNum = numero.split('*');
               if(parteNum[0]==''){
               }else{          
                    numero +=tecla;
                    operacao = tecla;
                    setState(() {
                      numero;
                    });
          }
    case '-':
         String numeroModificado = numero.replaceAll('-', '');
            
            primeiroValor = double.parse(numeroModificado);
            numero +=tecla;
            operacao = tecla;
            setState(() {
              numero;
            });
    break;

    case '+':
    
            String numeroModificado = numero.replaceAll('+', '');            
            primeiroValor = double.parse(numeroModificado);        
            numero +=tecla;          
            operacao = tecla;
            setState(() {
              numero;
            });


    break;

    case '=':
    // double resultado=0;

  if(numero==''){
    numero='';

  }else{
      if(operacao==''){}


    if(operacao=='+'){   
   

   List<String>parteNum = numero.split('+');
    primeiroValor = double.parse(parteNum[0]);
    segundoValor = double.parse(parteNum[1]);
    primeiroValor +=segundoValor;
    numero = primeiroValor.toString().replaceFirst(RegExp(r'\.?0*$'), '');    


      // resultado = primeiroValor + double.parse(numero);
      // numero = resultado.toString().replaceFirst(RegExp(r'\.?0*$'), '');     

      setState(() {
        numero;
      });
    }
     if(operacao=='-'){   
      
          List<String>parteNum = numero.split('-');
          primeiroValor = double.parse(parteNum[0]);
          segundoValor = double.parse(parteNum[1]);
          primeiroValor -=segundoValor;
          numero = primeiroValor.toString().replaceFirst(RegExp(r'\.?0*$'), '');    

      setState(() {
        numero;
      });
    }
     if(operacao=='*'){           
          List<String>parteNum = numero.split('*');
          primeiroValor = double.parse(parteNum[0]);
          segundoValor = double.parse(parteNum[1]);
          primeiroValor *=segundoValor;
          numero = primeiroValor.toString().replaceFirst(RegExp(r'\.?0*$'), '');          


      setState(() {
        numero;
      });
    }

     if(operacao=='/'){   
      
      if(primeiroValor != 0){        
          List<String>parteNum = numero.split('/');
          primeiroValor = double.parse(parteNum[0]);
          segundoValor = double.parse(parteNum[1]);
          primeiroValor /=segundoValor;
          numero = primeiroValor.toString().replaceFirst(RegExp(r'\.?0*$'), '');   

      setState(() {
        numero;
      });


      }else{
        setState(() {

          numero = 'Divisor zero';

          
        });
      }
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
              child: Btn(tecla: 'AC', pad: 8,),
              
              
              ),

            Text('', style: TextStyle(fontSize: 40,),),
            Text('', style: TextStyle(fontSize: 40,),),


            GestureDetector(
              onTap: () {

                  setState(() {              
                    if(numero.isNotEmpty)      {
                    numero = numero.substring(0,numero.length -1);                 
                    }
                  });
              },
              
              
              child: Btn(tecla: '<--',pad: 10,)
              
              ),

          ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
            children: [
            
            GestureDetector(
              onTap:(){                
                calcular('7');
                },
              child: Btn(tecla: '7'),                                             
              ),

            GestureDetector(
              onTap: () => calcular('8'),

              child: Btn(tecla: '8',)
            ),
              
             
            GestureDetector(

              onTap: () => calcular('9'),

              child: Btn(tecla: '9'),
              
              
              
              ),

            GestureDetector(
              onTap: () => calcular('/'),

              child: Btn(tecla: '/',pad: 25,)
              
              ),

          ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
            children: [
            
            GestureDetector(
              onTap: () => calcular('4'),
              child: Btn(tecla: '4'),           
              ),

             GestureDetector(
              onTap: () => calcular('5'),

              child: Btn(tecla: '5'),
              ),

            GestureDetector(
              onTap: () => calcular('6'),

              child: Btn(tecla: '6'),
              ),

            GestureDetector(
              onTap: () => calcular('*'),

              child: Btn(tecla: '*',pad: 25,),
              ),

          ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
            children: [
            
            GestureDetector(
              onTap: () => calcular('1'),
              child: Btn(tecla: '1'),
              ),

            GestureDetector(
              onTap: () => calcular('2'),
              child: Btn(tecla: '2'),
              ),

            GestureDetector(
              onTap: () => calcular('3'),
              child: Btn(tecla: '3'),
              ),

            GestureDetector(
              onTap: () => calcular('-'),
              child: Btn(tecla: '-', pad: 30,)
              ),

          ],),
            
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
            children: [
            
            GestureDetector(
              onTap: () => calcular('0'),
              child: Btn(tecla: '0'),
              ),

            GestureDetector(
              onTap: () => calcular('.'),
              child: Btn(tecla: '.',pad: 28,),
              ),

            GestureDetector(
              onTap: () => calcular('='),
              child: Btn(tecla: '=')
              ),

            GestureDetector(
              onTap: () => calcular('+'),
              child: Btn(tecla: '+'),
              ),

          ],),




        ],),






      ),
      
      
      );


  }
}