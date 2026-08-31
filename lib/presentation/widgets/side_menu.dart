import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    //Determinate if notch exists
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (int value) {
        setState(() {
          navDrawerIndex = value;
        });

        //Navigate to other screen using go_router api
        final menuItem = appMenuItems[value];
        context.push(menuItem.url);
        //Close drawer
        widget.scaffoldKey.currentState?.closeDrawer();
      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 5 : 20, 16, 10),
          child: const Text(
            'Main',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
          ),
        ),
        ...appMenuItems
            .sublist(0, 3)
            .map(
              (item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              ),
            ),
        const Padding(padding: EdgeInsets.fromLTRB(20, 16, 28, 10), child: Divider()),
        const Padding(
          padding: EdgeInsets.fromLTRB(30, 10, 16, 10),
          child: Text(
            'More options',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
          ),
        ),
        ...appMenuItems
            .sublist(3)
            .map(
              (item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              ),
            ),
      ],
    );
  }
}
