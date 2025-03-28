import 'package:flutter/material.dart';
import 'package:navbar_app/data/models/sidebar_item.dart';

const List<SidebarItem> menuItems = [
  SidebarItem(icon: Icons.home, label: 'Home', route: '/'),
  SidebarItem(icon: Icons.search, label: 'Search', route: '/search'),
  SidebarItem(icon: Icons.favorite, label: 'Favorites', route: '/favorites'),
  SidebarItem(icon: Icons.settings, label: 'Settings', route: '/settings'),
  SidebarItem(icon: Icons.person, label: 'Profile', route: '/profile'),
];
