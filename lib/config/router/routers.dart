import 'package:dashboard_busbanz_practice/TImeLine/time_line.dart';
import 'package:dashboard_busbanz_practice/TimeLine-Header/time_line_header.dart';
import 'package:dashboard_busbanz_practice/screens/Principal_Page/principal_page.dart';
import 'package:dashboard_busbanz_practice/screens/screens.dart';
import 'package:dashboard_busbanz_practice/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final appRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const ListComponentsScreen(),
        ),
        GoRoute(
          path: '/calendar',
          builder: (context, state) => const CalendarScreen(),
        ),
        GoRoute(
          path: '/timeLineHeader',
          builder: (context, state) => const TimeLineHeader(),
        ),
        GoRoute(
          path: '/timeLine',
          builder: (context, state) => const TimeLine(),
        ),
        GoRoute(
          path: '/card-default',
          builder: (context, state) => const CardDefaultScreen(),
        ),
        GoRoute(
          path: '/card-active-route',
          builder: (context, state) => const CardActiveRouteScreen(),
        ),
        GoRoute(
          path: '/principalPage',
          builder: (context, state) => const PrincipalPage(),
        ),
        GoRoute(
          path: '/animationCircle',
          builder: (context, state) => const AnimationCircle(),
        ),
      ],
    );
  },
);
