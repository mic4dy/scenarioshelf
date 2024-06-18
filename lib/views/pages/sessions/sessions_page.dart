import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scenarioshelf/constants/domains/sort_order.dart';
import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/router/app_routes.dart';

import 'package:scenarioshelf/views/pages/sessions/components/session_tile.dart';
import 'package:scenarioshelf/views/pages/sessions/providers/sessions/sessions_controller.dart';
import 'package:scenarioshelf/views/pages/sessions/providers/sessions_sort/sessions_sort_pivot.dart';

class SessionsPage extends HookConsumerWidget {
  const SessionsPage({
    required this.userId,
    super.key,
  });

  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pivot = useState(SessionsSortPivot.createdAt);
    final order = useState(SortOrder.desc);
    final sessions = ref.watch(sessionControllerProvider(userId, pivot.value, order.value));

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, _) => [
          SliverAppBar(
            centerTitle: false,
            floating: true,
            snap: true,
            toolbarHeight: 32,
            surfaceTintColor: Theme.of(context).colorScheme.surface,
            backgroundColor: Theme.of(context).colorScheme.surface,
            title: RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: FontSize.appBar,
                ),
                children: [
                  TextSpan(
                    text: '${sessions.valueOrNull?.length ?? 0} ',
                    style: const TextStyle(
                      fontSize: FontSize.appBar,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(
                    text: '件のセッション記録',
                    style: TextStyle(
                      fontSize: FontSize.subAppBar,
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              GestureDetector(
                onTap: () async => showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.sort,
                        size: IconSize.small,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: MarginSize.minimum),
                      Text(
                        pivot.value.display,
                        style: const TextStyle(
                          letterSpacing: 1.5,
                          fontSize: FontSize.appBarOption,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            // bottom: SessionSearchAppBar(),
          ),
        ],
        body: RefreshIndicator(
          onRefresh: () => ref.refresh(SessionControllerProvider(userId, pivot.value, order.value).future),
          child: SingleChildScrollView(
            child: SafeArea(
              top: false,
              child: sessions.when(
                data: (data) => Column(
                  children: data.map((session) => SessionTile(session: session)).toList(),
                ),
                error: (error, stack) => const SizedBox.shrink(),
                loading: () => const SizedBox.shrink(),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async => const RecordRoute().push(context),
      ),
    );
  }
}
