import 'package:go_router/go_router.dart';
import 'package:miscelaneos/presentation/screens/screens.dart';

final router = GoRouter(
  routes: [
    //! General
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/permissions',
      builder: (context, state) => const PermissionsScreen(),
    ),
    //!Sensors
    GoRoute(
      path: '/accelerometer',
      builder: (context, state) => const AcelerometroScreen(),
    ),
    GoRoute(
      path: '/compass',
      builder: (context, state) => const BrujulaScreen(),
    ),
    GoRoute(
      path: '/gyroscope-ball',
      builder: (context, state) => const GiroscopioBallScreen(),
    ),
    GoRoute(
      path: '/gyroscope',
      builder: (context, state) => const GiroscopioScreen(),
    ),
    GoRoute(
      path: '/magnetometer',
      builder: (context, state) => const MagnetometroScreen(),
    ),
  ]
);