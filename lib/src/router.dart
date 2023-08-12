import 'package:go_router/go_router.dart';
import 'package:telehealth/src/features/appointment/views/appointments.dart';
import 'package:telehealth/src/features/auth/presentation/views/auth.dart';
import 'package:telehealth/src/features/dashboard/presentation/views/dashboard.dart';
import 'package:telehealth/src/features/health_related/views/health_info_details.dart';
import 'package:telehealth/src/features/health_related/views/health_related.dart';
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
    GoRoute(
      path: '/health_related',
      builder: (context, state) => const HealthRelatedInfoScreen(),
    ),
    GoRoute(
      path: '/health_info_details/:pageType',
      builder: (context, state) => HealthInfoDetailsScreen(
        pageType: state.params['pageType'],
      ),
    ),
    GoRoute(
      path: '/appointments',
      builder: (context, state) => const AppointmentsScreen(),
    ),
    // GoRoute(
    //   path: '/appointments/:pageType',
    //   builder: (context, state) => HealthInfoDetailsScreen(
    //     pageType: state.params['pageType'],
    //   ),
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
