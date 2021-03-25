import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Calculadora();
  }
}

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  String conjunto_uno="0";
  String conjunto_dos="0";

  String conjunto="0";

  bool estaSumando=false;
  bool estaRestando=false;
  bool estaDividiendo=false;
  bool estaMultiplicando=false;

  bool isConjuntoUno=true;

  bool esDecimal=false;


  Function funcion_boton(String numero){
    if(isConjuntoUno){
      conjunto=conjunto_uno;
    }else{
      conjunto=conjunto_dos;
    }

    if(conjunto.length<6){
      if(conjunto=="0"){
        conjunto=numero;
      }else{
        conjunto=conjunto+numero;
      }
    }

    if(isConjuntoUno){
      conjunto_uno=conjunto;
    }else{
      conjunto_dos=conjunto;
    }

    setState(() {});
    return(){};
  }

  Function funcion_decimal(){
    if(isConjuntoUno){
      conjunto=conjunto_uno;
    }else{
      conjunto=conjunto_dos;
    }

    if(conjunto.length<5){
      conjunto=conjunto+".";
    }

    if(isConjuntoUno){
      conjunto_uno=conjunto;
    }else{
      conjunto_dos=conjunto;
    }
    esDecimal=true;

    setState(() {});
    return (){};
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black
                      )
                  ),
                  child: FittedBox(
                    alignment: AlignmentDirectional.centerEnd,
                    fit: BoxFit.fitHeight,
                    child: Text(
                        conjunto
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: ()=> funcion_boton("7"),
                            child: Text(
                                "7"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: ()=>funcion_boton("8"),
                            child: Text(
                                "8"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: ()=>funcion_boton("9"),
                            child: Text(
                                "9"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){
                              estaSumando=false;
                              estaRestando=false;
                              estaDividiendo=true;
                              estaMultiplicando=false;

                              isConjuntoUno=false;
                            },
                            child: Text(
                                "÷"
                            )
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: ()=>funcion_boton("4"),
                            child: Text(
                                "4"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: ()=>funcion_boton("5"),
                            child: Text(
                                "5"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: ()=>funcion_boton("6"),
                            child: Text(
                                "6"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){
                              estaSumando=false;
                              estaRestando=false;
                              estaDividiendo=false;
                              estaMultiplicando=true;

                              isConjuntoUno=false;
                            },
                            child: Text(
                                "x"
                            )
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: ()=>funcion_boton("1"),
                            child: Text(
                                "1"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: ()=>funcion_boton("2"),
                            child: Text(
                                "2"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: ()=>funcion_boton("3"),
                            child: Text(
                                "3"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){
                              estaSumando=false;
                              estaRestando=true;
                              estaDividiendo=false;
                              estaMultiplicando=false;

                              isConjuntoUno=false;
                            },
                            child: Text(
                                "-"
                            )
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: ()=>funcion_boton("0"),
                            child: Text(
                                "0"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){
                              funcion_decimal();
                            },
                            child: Text(
                                "."
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){
                              estaSumando=true;
                              estaRestando=false;
                              estaDividiendo=false;
                              estaMultiplicando=false;

                              isConjuntoUno=false;
                            },
                            child: Text(
                                "+"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: () {
                              conjunto="0";
                              conjunto_uno="0";
                              conjunto_dos="0";

                              estaSumando=false;
                              estaRestando=false;
                              estaDividiendo=false;
                              estaMultiplicando=false;

                              isConjuntoUno=true;
                              esDecimal=false;

                              setState(() {});
                            },
                            child: Text(
                                "C"
                            )
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 50,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: ElevatedButton(
                      child: Text('='),
                      onPressed: (){
                        double numero_uno=double.parse(conjunto_uno);
                        double numero_dos=double.parse(conjunto_dos);
                        double total=0;
                        if(estaSumando){
                          total=numero_uno+numero_dos;
                        }else if(estaRestando){
                          total=numero_uno-numero_dos;
                        }else if(estaMultiplicando){
                          total=numero_uno*numero_dos;
                        }else if(estaDividiendo){
                          total=numero_uno/numero_dos;
                        }

                        conjunto=total.toString();

                        if(conjunto.length>6){
                          conjunto=conjunto.substring(0,5)+"E";
                        }

                        setState(() {});
                      },
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
