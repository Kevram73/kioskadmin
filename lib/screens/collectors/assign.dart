import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kioskadmin/config/colors.dart';

class AssignCollectorScreen extends StatelessWidget {
  const AssignCollectorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assigner un collecteur"),
        centerTitle: true,
        backgroundColor: Coloors.primaryColor,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
               
                  
                SizedBox(height: 30),
                  TextFormField(
                  cursorColor: Coloors.primaryColor,
                  onChanged: (value) {},
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                  
                    labelStyle: TextStyle(color: Coloors.primaryColor),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Coloors.primaryColor)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Coloors.primaryColor)
                    ),
                    focusColor: Coloors.primaryColor,
                    fillColor: Coloors.primaryColor,
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: FaIcon(FontAwesomeIcons.shop, size:20, color: Coloors.primaryColor,),
                    ),
                    labelText: "Adresse email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                    )
                  ),
                  SizedBox(height: 10),
                  
                  ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Coloors.primaryColor), onPressed: (){}, child: Text("Assigner"))
            ],
          ),
        ),
      ),
    );
  }
}