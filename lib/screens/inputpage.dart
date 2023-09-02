// ignore_for_file: prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_element

import 'package:bmi_calculater_app/screens/calculaterfile.dart';
import 'package:bmi_calculater_app/screens/constentfile.dart';
import 'package:bmi_calculater_app/screens/contaner_class.dart';
import 'package:bmi_calculater_app/screens/icontext_class.dart';
import 'package:flutter/material.dart';
import 'resultfile.dart';


enum gender {
 time1,time2,time3,time4,time5,
}

class InputPage extends StatefulWidget {  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  

  int sliderhight=180;
   int sliderwaihgt=60;
   int sliderAge=20;

  Color mailcolor=activecolor;
  Color femailcolor=deactivecolor;
  
   void updatcolor(gender time){
       if(time==gender.time1){
        mailcolor=activecolor;
        femailcolor=deactivecolor;
       }
       if(time==gender.time2){
        mailcolor=deactivecolor;
        femailcolor=activecolor;
       }
   }
      
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("BMI Calculater")),backgroundColor: Color(0xFFEB1555), // Replace with your app title
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(child: 
            Row(children: [
             Expanded(child: GestureDetector(
              onTap: (){
                
                setState(() {
                  updatcolor(gender.time2);
                });
              },
               child: refecter_contaner(
                colors: mailcolor,
                coutom_widget: icons_text_widget_class(
                  iconsdata: Icons.male,
                  labol: "Male",
                ),
               ),
             )),
             Expanded(child: GestureDetector(
              onTap: (){
              
                setState(() {
                  updatcolor(gender.time1);
                });
              },
               child: refecter_contaner(
                colors: femailcolor,
                coutom_widget: icons_text_widget_class(
                   iconsdata: Icons.female,
                  labol: "Female",
                ),
               ),
             )),],)),
    
            Expanded(child: refecter_contaner(
              colors: Color(0xFF1D1E30),
              coutom_widget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Height",style: konstent,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(sliderhight.toString(),style: numbersize,),
                      Text("cm",style: konstent,),
                    ],
                  ),
                  Slider(value: 
                  sliderhight.toDouble(),
                  max: 220.0,
                  min: 120.0,
                  activeColor: Color(0xFFEB1555),
                  inactiveColor: Color(0xFF8D8E98),
                   onChanged: (double newvalue){
                    setState(() {
                        sliderhight=newvalue.round();
                    });
                   })
                ],
              ),
              ),
              ),
    
            Expanded(child:  
             Row(children: [
             Expanded(child: refecter_contaner(
              colors: Color(0xFF1D1E30),
              coutom_widget: 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("weight",style: konstent),
                   Text(sliderwaihgt.toString(),style: numbersize,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    roundicone(
                      iconData: Icons.exposure_minus_1,
                       onPress: (){
                         setState(() {
                           sliderwaihgt--;
                            
                         });
                         
                    }),
                    SizedBox(width: 3.0,),
                    roundicone(
                      iconData: Icons.plus_one, 
                      onPress: (){
                      setState(() {
                        sliderwaihgt++;
                       
                      }); 
                    })
                   ],)
                ],
              ),
             
    
              )),
             Expanded(child: refecter_contaner(
              colors: Color(0xFF1D1E30),
              coutom_widget:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Age",style: konstent),
                   Text(sliderAge.toString(),style: numbersize,),
    
    
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    roundicone(
                      iconData: Icons.exposure_minus_1,
                      onPress: (){
                         setState(() {
                           sliderAge--;
                          
                         });
                    }),
                    SizedBox(width: 6.0,),
                    roundicone(
                      iconData: Icons.plus_one, 
                      onPress: (){
                      setState(() {
                        sliderAge++;
                       
                      });
                    })
                   ],)
                ],
              ),
             
              )),
            ],),
            
            ),
            GestureDetector(
              onTap: () {
    
                calculater_brain cale=calculater_brain(height: sliderhight, weight: sliderwaihgt);
                Navigator.push(context, MaterialPageRoute(builder:(context) => resultscreen(
                      get_text11: cale.get_result(),
                       get_result11:cale.calculate_bmi(),
                      get_interpritation11: cale.get_interpritation() ,
    
                ) ));
              },
              child: Container(
                child: Center(child: Text("Calculate",style: konstent,)),
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: 50,
            
              ),
            )
          ],
        ) ,
      ),
    );
  }
}

class roundicone extends StatefulWidget {
 roundicone({required this.iconData, required this.onPress });
  final IconData iconData;
  final Function onPress;

  @override
  State<roundicone> createState() => _roundiconeState();
}
class _roundiconeState extends State<roundicone> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(widget.iconData),
      onPressed: () {
        widget.onPress(); // Invoke the onPress function here
      },
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 50.0,
        width: 50.0,
      ),
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
    );
  }
}



