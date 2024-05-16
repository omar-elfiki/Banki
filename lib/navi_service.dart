import 'package:flutter/material.dart';
import 'home_page.dart';
import 'services_page.dart';
import 'account_page.dart';
import 'auth_service.dart';

class CurrentPage extends StatefulWidget {
  const CurrentPage({super.key});

  @override
  State<CurrentPage> createState() => NavigationBar();
}

class NavigationBar extends State<CurrentPage> {
  final AuthService _auth = AuthService();
  var selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) { 
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = const HomePage();
        break;
      case 1:
        page = const ServicesPage();
        break;
      case 2:
        page = const AccountPage();
        break;
      case 3:
        _auth.signOut(context);
        page = const SizedBox.shrink();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
}
  return Scaffold(
      body: page,
      bottomNavigationBar: isLoggedIn ? BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), 
                label: "Services",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Account',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.login_outlined),
                label: 'Logout',
              ),
            ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: onItemTapped,
        backgroundColor: const Color.fromARGB(255, 122, 125, 128).withOpacity(0.5),
      ) : null,
    );
  }
}