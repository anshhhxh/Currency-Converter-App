import 'package:currency_converter/currencypage.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
  //here const is for the app to remain the same and preserve the data entered
///Types of widget
///     State refer to how text should be that widget will care abput
///   1.StatelessWidget -- app will usually have state,state will not change,will always tell to override some functions,some information ie alwys static
///   2.StatefullWidget
///            these two are related to ui
///   3.InheritedWidget
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Currencypagee()
        );
  }
}