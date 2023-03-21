import 'package:flutter/material.dart';
import 'package:molakmedstore/community_view.dart';
import 'package:molakmedstore/dortors_view.dart';
import 'package:molakmedstore/pharmacy_view.dart';
import 'package:molakmedstore/profile_view.dart';
import 'package:molakmedstore/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo
        
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
         homeRoute : (context) => const MyApp(),
        doctorsRoute : (context) => const DoctorsView(),
        pharmacyRoute : (context) => const PharmacyStoreView(),
        communityRoute : (context) => const CommunityView(),
        profileRoute : (context) => const ProfileView(),
      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
   final List<String> routes = [ '/home/' ,  '/doctors/', '/pharmacy/', '/community/', '/profile/',  ];

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[

    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Doctors',
      style: optionStyle,
    ),
    Text(
      'Index 2: Pharmacy',
      style: optionStyle,
    ),
     Text(
      'Index 3: Community',
      style: optionStyle,
    ),
Text(
      'Index 4: Profile',
      style: optionStyle,
    ),
    ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    Navigator.pushNamed(context, routes[index]);

    });
  }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
              title: const Text('MolakMedStore',
                ),
         actions: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
            ],
         bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search for something',
                        prefixIcon: Icon(Icons.search),
                       ),
                  ),
                ),
              ),
              
      ),
    //  
    ),
   
    body: const  Center(
 child:  Text(' The pharmacy items will appear here')
    ),
    


    bottomNavigationBar: BottomNavigationBar(
      items:const <BottomNavigationBarItem> [
BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.indigoAccent,
          ),

           BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Doctors',
            backgroundColor: Colors.red,
          ),

           BottomNavigationBarItem(
            icon: Icon(Icons.local_pharmacy),
            label: 'Pharmacy',
            backgroundColor: Colors.blue,
          ),

           BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Community',
            backgroundColor: Colors.yellow,
          ),

           BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: 'Profile',
            backgroundColor: Colors.orange,
          ),

    ],
      type: BottomNavigationBarType.fixed,
currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        
    ),
    
    ); 
  
  
  }
}



