import 'package:go_router/go_router.dart';
import 'package:telehealth/src/features/auth/presentation/views/auth.dart';
import 'package:telehealth/src/features/dashboard/presentation/views/dashboard.dart';
import 'package:telehealth/src/features/splash/presentation/views/splash_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/auth',
      builder: (context, state) => const AuthScreen(),
    ),
    GoRoute(
      path: '/dashboard',
      builder: (context, state) => const Dashboard(),
    ),
    // GoRoute(
    //   path: '/welcome',
    //   builder: (context, state) => const WelcomePage(),
    // ),
    // GoRoute(
    //   path: '/dashboard',
    //   builder: (context, state) => DashBoardPage(),
    // ),
    // GoRoute(
    //   path: '/rooms',
    //   builder: (context, state) => const RoomsPage(),
    // ),
    // GoRoute(
    //   path: '/specific_room/:roomType',
    //   builder: (context, state) => SpecificRoomsPage(
    //     roomType: state.params['roomType'],
    //   ),
    // ),
    // GoRoute(
    //   path: '/tv',
    //   builder: (context, state) => const TvPage(),
    // ),
    // GoRoute(
    //   path: '/lights',
    //   builder: (context, state) => const LightsPage(),
    // ),

    // GoRoute(
    //     path: '/login',
    //     builder: (context, state) => const LoginPage(),
    //     routes: [
    //       GoRoute(
    //         path: 'new',
    //         builder: (context, state) => const TodosEdit(),
    //       ),
    //       GoRoute(
    //         path: ':id',
    //         builder: (context, state) => TodosEdit(
    //           todoId: state.params['id'],
    //         ),
    //       )
    //     ])
  ],
);
