import 'package:dashboard_busbanz_practice/TimeLine-Header/time_line_header.dart';
import 'package:dashboard_busbanz_practice/screens/screens.dart';
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
      ],
    );
  },
);
