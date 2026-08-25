import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subtitle;
  final String url;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subtitle,
    required this.url,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Buttons',
    subtitle: 'Miscellaneous buttons on flutter',
    url: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Cards',
    subtitle: 'A Styled Container',
    url: '/cards',
    icon: Icons.credit_card,
  ),
];
