import 'package:flutter/material.dart';
import 'package:navbar_app/data/menu_items.dart';
import 'package:navbar_app/pages/favorites_page.dart';
import 'package:navbar_app/pages/profile_page.dart';
import 'package:navbar_app/pages/search_page.dart';
import 'package:navbar_app/pages/settings_page.dart';
import 'package:navbar_app/utils/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Sidebar',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/search': (context) => const SearchPage(),
        '/favorites': (context) => const FavoritesPage(),
        '/settings': (context) => const SettingsPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isSidebarOpen = false;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive App'),
        leading:
            (Responsive.isDesktop(context))
                ? SizedBox(width: 80)
                : IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    setState(() {
                      _isSidebarOpen = !_isSidebarOpen;
                    });
                  },
                ),
      ),
      body: Row(
        children: [
          // Sidebar Navigation
          if (Responsive.isDesktop(context) || _isSidebarOpen)
            NavigationRail(
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                  if (!Responsive.isDesktop(context) ||
                      !Responsive.isTablet(context)) {
                    _isSidebarOpen = false;
                  }
                });
                Navigator.pushNamed(context, menuItems[index].route);
              },
              elevation: 1,
              backgroundColor: const Color.fromARGB(255, 250, 250, 250),
              labelType: NavigationRailLabelType.selected,
              destinations:
                  menuItems
                      .map(
                        (item) => NavigationRailDestination(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          icon: Icon(item.icon),
                          label: Text(item.label),
                        ),
                      )
                      .toList(),
              minWidth: 80,
            ),
          // Main content
          Expanded(
            child: Center(
              child: Text(
                'Selected: ${menuItems[_selectedIndex].label}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
