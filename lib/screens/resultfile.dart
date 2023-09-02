import 'package:bmi_calculater_app/screens/constentfile.dart';
import 'package:flutter/material.dart';
import 'inputpage.dart';
import 'contaner_class.dart';





class resultscreen extends StatelessWidget {
  resultscreen({required this.get_text11,required this.get_result11,required this.get_interpritation11});

final String get_text11;
final String get_result11;
final String get_interpritation11;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Center(child: Text("BMI Calculater "),),backgroundColor: Color(0xFFEB1555),),
    
    
        body: Column(
          children: [
                      
          Expanded(child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text("Result ",style: k_tital_result ,),
          )),
    
          Expanded(
            flex: 5,
            child: 
               refecter_contaner(
                  colors: activecolor,
                   coutom_widget:
                   Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    
                    children: [
                      Center(child: Text(get_text11,style: k_normal_result,)),
                      Center(child: Text(get_result11,style: k_tital_result,)),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(get_interpritation11),
                      ))
    
                    ],
                   )
               ),
                
          
          ),
    
          Expanded(child: GestureDetector(
              onTap: () {
                
                Navigator.push(context, MaterialPageRoute(builder:(context) => InputPage() ));
              },
              child: Container(
                child: Center(child: Text("Recalculate",style: konstent,)),
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: 50,
            
              ),
            )),
    
        ],),
      ),
    );
  }
}