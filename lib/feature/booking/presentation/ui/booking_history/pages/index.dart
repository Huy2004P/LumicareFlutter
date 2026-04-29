import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart'
    show BookingItemEntity;
import 'package:lumi_care/feature/auth/data/datasources/auth_local_datasource.dart';

import '../bloc/booking_history_bloc.dart';
import '../bloc/booking_history_event.dart';
import '../bloc/booking_history_state.dart';
import '../widgets/booking_empty_state.dart';
import '../widgets/booking_history_shimmer.dart';
import '../widgets/booking_item_card.dart';

class BookingHistoryPage extends StatefulWidget {
  const BookingHistoryPage({super.key});

  @override
  State<BookingHistoryPage> createState() => _BookingHistoryPageState();
}

class _BookingHistoryPageState extends State<BookingHistoryPage> {
  final GetIt _sl = GetIt.instance;

  Future<void> _loadBookingHistory() async {
    final user = _sl<AuthLocalDataSource>().getUser();
    if (user != null && user.id != 0) {
      context.read<BookingHistoryBloc>().add(BookingHistoryFetched(user.id));
    }
  }

  @override
  void initState() {
    super.initState();
    _loadBookingHistory();
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text(
            'LỊCH SỬ ĐẶT LỊCH',
            style: TextStyle(
              color: Color(0xFF191C1F),
              fontWeight: FontWeight.w600,
              fontSize: 16,
              letterSpacing: 1.2,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.sync_rounded, color: Color(0xFF0075FF)),
              onPressed: _loadBookingHistory,
            ),
            const SizedBox(width: 8),
          ],
        ),
        body: BlocBuilder<BookingHistoryBloc, BookingHistoryState>(
          builder: (context, state) {
            if (state.status == BookingHistoryStatus.loading) {
              return const BookingHistoryShimmer();
            }

            if (state.status == BookingHistoryStatus.success) {
              if (state.bookings.isEmpty) {
                return const BookingEmptyState();
              }

              return RefreshIndicator(
                color: const Color(0xFF0075FF),
                onRefresh: _loadBookingHistory,
                child: ListView.builder(
                  padding: const EdgeInsets.fromLTRB(20, 12, 20, 100),
                  itemCount: state.bookings.length,
                  itemBuilder: (context, index) {
                    final booking = state.bookings[index];
                    return BookingItemCard(
                      booking: booking,
                      onCancel: _showCancelDialog,
                      onDelete: _onDeleteBooking,
                    );
                  },
                ),
              );
            }

            return Center(child: Text(state.errorMessage ?? 'Có lỗi xảy ra'));
          },
        ),
      ),
    );
  }

  void _onDeleteBooking(BookingItemEntity booking) {
    final userId = _sl<AuthLocalDataSource>().getUser()?.id ?? 0;
    context.read<BookingHistoryBloc>().add(
      BookingDeleteRequested(bookingId: booking.id, patientId: userId),
    );
  }

  void _showCancelDialog(BookingItemEntity booking) {
    final controller = TextEditingController();
    final userId = _sl<AuthLocalDataSource>().getUser()?.id ?? 0;

    showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text(
          'Hủy lịch khám',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(hintText: 'Nhập lý do hủy...'),
          maxLines: 3,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Đóng'),
          ),
          ElevatedButton(
            onPressed: () {
              final reason = controller.text.trim();
              context.read<BookingHistoryBloc>().add(
                BookingCancelRequested(
                  bookingId: booking.id,
                  patientId: userId,
                  reason: reason.isEmpty ? 'Khách hủy' : reason,
                ),
              );
              Navigator.pop(ctx);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF0075FF),
              shape: const StadiumBorder(),
            ),
            child: const Text(
              'Xác nhận',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
