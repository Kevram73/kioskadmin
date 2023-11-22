import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kioskadmin/config/colors.dart';
import 'package:kioskadmin/screens/collectors/index.dart';
import 'package:kioskadmin/screens/shops/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final storage = GetStorage();
    final prenom = storage.read("user_prenom");
    final nom = storage.read("user_nom");
    final phone = storage.read("user_phone");
    final token = storage.read("user_token");

    var drawerHeader = UserAccountsDrawerHeader(
      decoration: BoxDecoration(color: Color(0xFF34495e)),
      accountName: Text("$nom $prenom"),
     accountEmail: Text("$phone"),
      currentAccountPicture: const CircleAvatar(
        backgroundColor: Colors.white,
        child: FlutterLogo(size: 40,),
      ),
      
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tableau de bord"),
        centerTitle: true,
        backgroundColor: Coloors.primaryColor,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            drawerHeader,
            ListTile(
              title: const Text("Liste des collecteurs"),
              leading: const Icon(Icons.person),
              onTap: () {
                Get.to(CollectorScreen());
              },
            ),
            ListTile(
              title: const Text("Liste des boutiques"),
              leading: const Icon(Icons.home),
              onTap: () {
                Get.to(ShopScreen());
              },
            ),
            ListTile(
              title: const Text("Déconnexion"),
              leading: const Icon(Icons.logout),
              onTap: () {
                storage.erase();
              },
            )
          ],
        
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            InkWell(
              onTap: () => Get.to(const CollectorScreen()),
              child: const Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  FaIcon(FontAwesomeIcons.users, size: 30,),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text("100", style: TextStyle(fontSize: 24, color: Colors.red, fontWeight: FontWeight.bold),),
                  ),
                  Text("Collecteur(s)")
                ],)
              ),
            ),
            InkWell(
              onTap: () => Get.to(const ShopScreen()),
              child: const Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  FaIcon(FontAwesomeIcons.shop, size: 30,),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text("100", style: TextStyle(fontSize: 24, color: Colors.blue, fontWeight: FontWeight.bold),),
                  ),
                  Text("Boutique(s)")
                ],)
              ),
            ),
          ],
        ),
      ),
    );
  }
}