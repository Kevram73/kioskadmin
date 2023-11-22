import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:kioskadmin/config/colors.dart';
import 'package:kioskadmin/screens/collectors/create.dart';
import 'package:kioskadmin/screens/collectors/show.dart';

class CollectorScreen extends StatelessWidget {
  const CollectorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liste des collecteurs"),
        centerTitle: true,
        backgroundColor: Coloors.primaryColor,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.to(CollectorCreateScreen());
      }, child: FaIcon(FontAwesomeIcons.plus), backgroundColor: Coloors.primaryColor,),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            InkWell(
              onTap: (){ 
                Get.to(ShowCollector());
                },
              child: Card(
                child: ListTile(
                  trailing: FaIcon(FontAwesomeIcons.arrowRight, size: 16, color: Coloors.primaryColor,),
                  leading: FaIcon(FontAwesomeIcons.user, color: Coloors.primaryColor,),
                  title: Row(
                    children: [
                      Text("Jean Danger", style: TextStyle(fontSize: 16),),
                    ],
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Adresse : ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)),
                          Text("Shop 1"),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Contact : ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)),
                          Text("79879399"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}