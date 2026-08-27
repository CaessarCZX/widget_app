import 'package:flutter/material.dart';
import 'package:widget_app/config/router/routes.dart';

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
    url: Routes.buttonsScreen,
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Cards',
    subtitle: 'A Styled Container',
    url: Routes.cardsScreen,
    icon: Icons.credit_card,
  ),
  MenuItems(
    title: 'Progress Indicators',
    subtitle: 'Generals and controlled',
    url: Routes.progress,
    icon: Icons.refresh_rounded,
  ),
  MenuItems(
    title: 'Snackbar and dialogs',
    subtitle: 'Indicators on screen',
    url: Routes.snackBarScreen,
    icon: Icons.info_outline,
  ),
  MenuItems(
    title: 'Animated containes',
    subtitle: 'Stateful Animated Container',
    url: Routes.animatedScreen,
    icon: Icons.check_box_outlined,
  ),
];
