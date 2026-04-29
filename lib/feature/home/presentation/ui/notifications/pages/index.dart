import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import 'package:lumi_care/feature/auth/data/datasources/auth_local_datasource.dart';
import '../bloc/notification_bloc.dart';
import '../widgets/notification_app_bar.dart';
import '../widgets/notification_item_card.dart';
import '../widgets/notification_empty_state.dart';

class NotificationHistoryPage extends StatefulWidget {
  const NotificationHistoryPage({super.key});

  @override
  State<NotificationHistoryPage> createState() =>
      _NotificationHistoryPageState();
}

class _NotificationHistoryPageState extends State<NotificationHistoryPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final int userId = GetIt.I<AuthLocalDataSource>().getUser()?.id ?? 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    context.read<NotificationBloc>().add(NotificationFetched(userId));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: NotificationAppBar(
          tabController: _tabController,
          onBack: () => context.pop(),
          onMarkAllRead: () => context.read<NotificationBloc>().add(
            NotificationMarkAllAsReadRequested(userId),
          ),
        ),
        body: BlocBuilder<NotificationBloc, NotificationState>(
          builder: (context, state) {
            if (state.status == NotificationStatus.loading) {
              return const Center(
                child: CircularProgressIndicator(color: Color(0xFF0075FF)),
              );
            }

            return TabBarView(
              controller: _tabController,
              children: [
                _buildList(state.notifications),
                _buildList(
                  state.notifications.where((n) => !n.isRead).toList(),
                ),
                _buildList(state.notifications.where((n) => n.isRead).toList()),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildList(List<NotificationItemEntity> list) {
    if (list.isEmpty) return const NotificationEmptyState();

    return RefreshIndicator(
      color: const Color(0xFF0075FF),
      onRefresh: () async =>
          context.read<NotificationBloc>().add(NotificationFetched(userId)),
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 100),
        itemCount: list.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) =>
            NotificationItemCard(item: list[index], userId: userId),
      ),
    );
  }
}
