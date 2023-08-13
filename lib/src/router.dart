import 'package:go_router/go_router.dart';
import 'package:telehealth/src/features/appointment/views/appointments.dart';
import 'package:telehealth/src/features/auth/presentation/views/auth.dart';
import 'package:telehealth/src/features/dashboard/presentation/views/dashboard.dart';
import 'package:telehealth/src/features/health_related/views/health_info_details.dart';
import 'package:telehealth/src/features/health_related/views/health_related.dart';
import 'package:telehealth/src/features/messaging/views/messaging.dart';
import 'package:telehealth/src/features/splash/presentation/views/splash_screen.dart';
import 'package:telehealth/src/features/video_consultation/views/video_chat.dart';
import 'package:telehealth/src/features/video_consultation/views/video_consultation.dart';

import 'features/appointment/views/book_appointments.dart';

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
    GoRoute(
      path: '/book_appointments/:drName',
      builder: (context, state) => BookAppointmentsScreen(
        drName: state.params['drName'],
      ),
    ),

    // GoRoute(
    //   path: '/specific_room/:roomType',
    //   builder: (context, state) => SpecificRoomsPage(
    //     roomType: state.params['roomType'],
    //   ),
    // ),
    GoRoute(
      path: '/messaging',
      builder: (context, state) => const MessagingScreen(),
    ),
    GoRoute(
      path: '/video_consultation',
      builder: (context, state) => const VideoConsultationScreen(),
    ),
    GoRoute(
      path: '/video_conference/:drName',
      builder: (context, state) => VideoConferenceScreen(
        drName: state.params['drName'],
      ),
    ),
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
