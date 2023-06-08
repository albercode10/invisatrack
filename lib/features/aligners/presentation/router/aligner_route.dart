import 'package:go_router/go_router.dart';
import 'package:invisatrack/features/aligners/presentation/screens/aligner_add_screen.dart';
import 'package:invisatrack/features/aligners/presentation/screens/aligner_list_screen.dart';

final alignerRoute = StatefulShellBranch(
  routes: <RouteBase>[
    GoRoute(
      path: '/aligners',
      builder: (context, state) => const AlignerListScreen(),
      routes: [
        GoRoute(
          path: 'add',
          builder: (context, state) {
            return const AlignerAddScreen();
          },
        ),
      ],
    ),
  ],
);
