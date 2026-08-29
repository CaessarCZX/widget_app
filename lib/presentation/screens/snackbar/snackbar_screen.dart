import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});

  static const String name = 'snackbar_screen';

  void _displayCustomSnackbar(BuildContext context) {
    //Clear previous snackbar on screeen
    ScaffoldMessenger.of(context).clearSnackBars();

    //Extract Snackbar widget into variable
    final snackbar = SnackBar(
      content: const Text('Something is building'),
      //Embedded button in sanckbar
      //-> any action when the button is pressed will close the snackbar itself
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      duration: const Duration(seconds: 2),
      persist: false, // Force the close of snackbar
    );

    //Finaly just make a callback passing the widget
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbar and dialogs')),
      body: _DialogView(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _displayCustomSnackbar(context),
        label: const Text('Display snackbar'),
        icon: Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}

class _DialogView extends StatelessWidget {

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text(
          'Officia consequat non anim officia nostrud sunt cillum eu occaecat commodo reprehenderit cupidatat ex. Officia duis officia irure duis reprehenderit incididunt sunt veniam cillum nostrud nulla labore adipisicing consequat. Duis fugiat esse cupidatat veniam cillum veniam dolor qui. Labore enim enim quis in sunt ad pariatur ullamco duis fugiat mollit minim enim. Incididunt ipsum Lorem aliqua aliquip labore culpa. Deserunt ipsum sint ullamco Lorem.',
        ),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () => context.pop(),
            child: const Text('Aceptar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
            onPressed: () => showAboutDialog(
              context: context,
              applicationName: 'Widgets App',
              children: [
                const Text(
                  'Ex ad voluptate occaecat minim excepteur minim culpa duis est. Aliquip nostrud consectetur excepteur culpa. Exercitation pariatur labore tempor consequat commodo velit fugiat ad culpa. Et qui aliquip ipsum deserunt culpa incididunt irure culpa nostrud voluptate reprehenderit exercitation.',
                ),
              ],
            ),
            child: const Text('Used licencies'),
          ),
          FilledButton.tonal(
            onPressed: () => openDialog(context),
            child: const Text('Display dialog'),
          ),
        ],
      ),
    );
  }
}
