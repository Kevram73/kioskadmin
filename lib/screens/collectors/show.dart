import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kioskadmin/config/colors.dart';
import 'package:kioskadmin/screens/collectors/assign.dart';

class ShowCollector extends StatelessWidget {
  const ShowCollector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Détail d'un collecteur"),
        centerTitle: true,
        backgroundColor: Coloors.primaryColor,
      ),
      body: Card(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/man-avatar.jpeg"),
              ),
              Text("Jean Danger", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Boutiques : Shop 1", style: TextStyle(fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Contact : 79879399", style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Coloors.primaryColor), onPressed: (){
                Get.to(AssignCollectorScreen());
              }, child: Text("Assigner une nouvelle boutique"))
            ],
          ),
        ),
      ),
    );
  }
}