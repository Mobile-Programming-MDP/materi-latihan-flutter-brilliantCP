import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/screens/favorite_screen.dart';
// import 'package:wisata_candi/screens/detail_screen.dart';
import 'package:wisata_candi/screens/profile_screen.dart';
import 'package:wisata_candi/screens/search_screen.dart';
import 'package:wisata_candi/screens/sign_in.dart';
import 'package:wisata_candi/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(
       appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.deepPurple),
        titleTextStyle: TextStyle(
          color: Colors.deepPurple,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        )
       ),
       colorScheme: 
        
        ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(
          primary: Colors.deepPurple,
          surface: Colors.deepPurple[50],
        ),
        useMaterial3: true,
      ),
      home: MainScreen(),
      // home: DetailScreen(candi: candiList[0]),
      // home: HomeScreen(),
    );
  }
}
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
//TODO 1 deklarasi variabel
int _currentindex = 0;
final List<Widget> _children = [
  HomeScreen(),
  SearchScreen(),
  FavoriteScreen(),
  ProfileScreen(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO 2 buat properti body berupa widget yang ditampilkan
      body: _children[_currentindex],
      //TODO 3 buat properti buttonNavigationBar dengan nilai Theme
      bottomNavigationBar: 
      Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.deepPurple[50],), 
        child: BottomNavigationBar(
          currentIndex: _currentindex,
          onTap: (index){
            setState(() {
              _currentindex = index;
            });
          },
          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.deepPurple,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.deepPurple,),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.deepPurple,),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.deepPurple,),
              label: 'Profile',
            ),
          ],
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.deepPurple[100],
          showUnselectedLabels: true,
        )
      ),
      //TODO 4 buat data dan child dari Theme
    );
  }
}
