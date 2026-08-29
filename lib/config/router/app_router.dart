import 'package:go_router/go_router.dart';
import 'package:widget_app/config/router/routes.dart';
import 'package:widget_app/presentation/screens/screens.dart';


// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: Routes.homeScreen,
      name: HomeScreen.name,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: Routes.buttonsScreen,
      name: ButtonsScreen.name,
      builder: (context, state) => ButtonsScreen(),
    ),
    GoRoute(
      path: Routes.cardsScreen,
      name: CardsScreen.name,
      builder: (context, state) => CardsScreen(),
    ),
    GoRoute(
      path: Routes.progress,
      name: ProgressScreen.name,
      builder: (context, state) => ProgressScreen(),
    ),
    GoRoute(
      path: Routes.snackBarScreen,
      name: SnackBarScreen.name,
      builder: (context, state) => SnackBarScreen(),
    ),
    GoRoute(
      path: Routes.animatedScreen,
      name: AnimatedScreen.name,
      builder: (context, state) => AnimatedScreen(),
    ),
    GoRoute(
      path: Routes.uiControlsScreen,
      name: UiControlsScreen.name,
      builder: (context, state) => UiControlsScreen(),
    ),
    GoRoute(
      path: Routes.appTutorialScreen,
      name: AppTutorialScreen.name,
      builder: (context, state) => AppTutorialScreen(),
    ),
    GoRoute(
      path: Routes.infiniteScrollScreen,
      name: InfiniteScrollScreen.name,
      builder: (context, state) => InfiniteScrollScreen(),
    ),
  ],
);
