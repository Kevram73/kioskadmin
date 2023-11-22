import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kioskadmin/config/colors.dart';

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
                Navigator.pushNamed(context, "/login");
              },
            ),
            ListTile(
              title: const Text("Liste des boutiques"),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.pushNamed(context, "/login");
              },
            ),
            ListTile(
              title: const Text("Déconnexion"),
              leading: const Icon(Icons.logout),
              onTap: () {
                storage.erase();
                Navigator.pushNamed(context, "/login");
              },
            )
          ],
        
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
          SizedBox(height: 10),
          Card(
            child: ListTile(title: Text("Collecteur(s)"), subtitle: Text("100", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.blue)), leading: FaIcon(FontAwesomeIcons.users), trailing: FaIcon(FontAwesomeIcons.arrowRight),),
          ),
          Card(
            child: ListTile(title: Text("Boutique(s)"), subtitle: Text("100", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.red)), leading: FaIcon(FontAwesomeIcons.users), trailing: FaIcon(FontAwesomeIcons.arrowRight)),
          ),
        ]),
      ),
    );
  }
}