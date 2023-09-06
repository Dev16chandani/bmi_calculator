import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {

  TextEditingController _name = TextEditingController();
  TextEditingController _weight = TextEditingController();
  TextEditingController _height = TextEditingController();

  double result=0.0;
  String status="";


  void calculate(){
    double w=double.parse(_weight.text.toString());
    double h=double.parse(_height.text.toString());
    setState((){
       result = w/(h*h);
       if(result<18.4){
         status="Underweight";
       }
       if(result>18.4 && result<24.9){
         status="Normal";
       }
       if(result>25.0 && result<39.9){
         status="Overweight";
       }
       if(result>40.0){
         status="Obese";
       }
    });
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(child: Text("BMI Calculator")),
            leading: Icon(Icons.calculate_rounded),
            backgroundColor: Colors.black,
        ),
      body: Center(child: Container(height: 800,width:500,decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.lightBlue,Colors.deepPurpleAccent,Colors.redAccent])),
        child: Column(mainAxisSize: MainAxisSize.max,
          children: [
            Icon(Icons.man,color:Colors.black,size:80),
            //Text("LOGIN",style:TextStyle(color:Colors.black,fontSize: 50,fontWeight: FontWeight.bold,)),
          SizedBox(height:50,width:300,
               child:TextField(controller: _name,decoration: InputDecoration(labelText: 'Name'),),),

            SizedBox(height:50,width:300,
              child:TextField(controller: _weight,decoration: InputDecoration(labelText: 'Weight')),),
            SizedBox(height:50,width:300,
              child:TextField(controller: _height,decoration: InputDecoration(labelText: 'Height')),),
            SizedBox(width: 200,height: 85,
                child:Container(child:ElevatedButton(onPressed: (){calculate();},
                  child: Text("Calculate BMI",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                ),
                ),
                  margin: EdgeInsets.all(20),
                )

            ),
            SizedBox(height:50,width:300,
                child:Center(child: Text("BMI=$result")),

            ),
            SizedBox(height:30,width:300,
               child:Center(child: Text("Status=$status")),

            ),

          ]
        ),



      )
      ),
    );
  }
}
