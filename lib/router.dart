import 'package:example_riverpod/pages/item_create_edit_page.dart';
import 'package:example_riverpod/pages/item_list_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/item',
  routes: [
    GoRoute(
      path: '/item',
      builder: (context, state) => const ItemListPage(),
      routes: [
        GoRoute(
          path: 'new',
          builder: (context, state) => const ItemCreateEditPage(),
        ),
        GoRoute(
          path: ':id',
          builder: (context, state) => ItemCreateEditPage(
            id: int.parse(state.params['id'] ?? ''),
          ),
        ),
      ],
    ),
  ],
);
