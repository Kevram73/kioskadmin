import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kioskadmin/config/colors.dart';

class ShopCreateScreen extends StatelessWidget {
  const ShopCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ajouter une boutique"),
        centerTitle: true,
        backgroundColor: Coloors.primaryColor,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
               TextFormField(
                  cursorColor: Coloors.primaryColor,
                  onChanged: (value) {},
                  keyboardType: TextInputType.name,
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
                      child: FaIcon(FontAwesomeIcons.user, size:20, color: Coloors.primaryColor,),
                    ),
                    labelText: "Nom",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                    )
                  ),

        SizedBox(height: 10),
                  TextFormField(
                  cursorColor: Coloors.primaryColor,
                  onChanged: (value) {},
                  keyboardType: TextInputType.phone,
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
                      child: FaIcon(FontAwesomeIcons.phone, size:20, color: Coloors.primaryColor,),
                    ),
                    labelText: "Téléphone",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                    )
                  ),
                SizedBox(height: 10),
                  TextFormField(
                  cursorColor: Coloors.primaryColor,
                  onChanged: (value) {},
                  keyboardType: TextInputType.streetAddress,
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
                      child: FaIcon(FontAwesomeIcons.locationPin, size:20, color: Coloors.primaryColor,),
                    ),
                    labelText: "Adresse",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                    )
                  ),
                  
                  SizedBox(height: 20),
                  ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Coloors.primaryColor), onPressed: (){}, child: Text("Envoyer"))
            ],
          ),
        ),
      ),
    );
  }
}