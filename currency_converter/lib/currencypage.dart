import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
  //1.Create a variable that stores the input number
  //2.Create  afunction that multiplies the given values given by the textfield 
  //3.Store the value
  //4.Display the value
  class Currencypagee extends StatefulWidget{
     Currencypagee({super.key}){
      print("Construct");
     }

    @override
    State<Currencypagee> createState() {
      print("Create state");
      return  _Currencypagestate();
    }
  }
  
class _Currencypagestate extends State<Currencypagee>{
  double result=0;
  final TextEditingController textEditingController=TextEditingController();
  @override
  void initState() {
    super.initState();
    print("rebuild");
  }
  @override
  Widget build(BuildContext context){
    print("Rebuild");
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text(
          "Currency Converter",
          style: TextStyle(
            color: Color.fromARGB(233, 255, 255, 255),
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
        body:Center(
            child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Text(
              "₹${result.toString()}",
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 255, 255, 255) 
              ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: TextField(
                  controller: textEditingController,
                  decoration:InputDecoration(
                    hintText:"Enter the Amount in USD.",
                    hintStyle: TextStyle(
                      color:Color.fromARGB(146, 0, 0, 0)
                    ),
                    prefixIcon: const Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.black87,
                    filled:true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3.0,
                        style: BorderStyle.solid,
                        color: Colors.white60
                      ),
                      borderRadius:BorderRadius.all(Radius.circular(50)),
                    )
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: (){
                    setState((){
                    result=double.parse(textEditingController.text)*81;
                    if(kDebugMode){
                      print(result);
                    }
                    return;
                    });
                  },
                 style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.grey[850]),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  fixedSize: WidgetStatePropertyAll(Size(375,30)),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius : BorderRadius.circular(8.0),
                  ),
                  ),
                 ),
                 child: const Text(
                  "Convert",
                 ),
                 ),
              ),
            ],
        ),
        ),
      );
  }
}