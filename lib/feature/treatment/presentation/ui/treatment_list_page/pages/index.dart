import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/treatment_bloc.dart';
import '../widgets/treatment_card.dart';
import '../widgets/treatment_empty_state.dart';
import '../widgets/treatment_error_view.dart';
import '../widgets/treatment_shimmer.dart';

class TreatmentListPage extends StatefulWidget {
  final int userId;
  const TreatmentListPage({super.key, required this.userId});

  @override
  State<TreatmentListPage> createState() => _TreatmentListPageState();
}

class _TreatmentListPageState extends State<TreatmentListPage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() {
    context.read<TreatmentBloc>().add(TreatmentStarted(widget.userId));
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(context),
        body: BlocBuilder<TreatmentBloc, TreatmentState>(
          builder: (context, state) {
            if (state.status == TreatmentStatus.loading) {
              return const TreatmentShimmer();
            }

            if (state.status == TreatmentStatus.failure) {
              return TreatmentErrorView(
                message: state.errorMessage ?? "Lỗi kết nối máy chủ",
                onRetry: loadData,
              );
            }

            return RefreshIndicator(
              color: const Color(0xFF0075FF),
              onRefresh: () async => loadData(),
              child: state.records.isEmpty
                  ? const TreatmentEmptyState()
                  : ListView.builder(
                      padding: const EdgeInsets.fromLTRB(20, 12, 20, 100),
                      physics: const BouncingScrollPhysics(),
                      itemCount: state.records.length,
                      itemBuilder: (context, index) =>
                          TreatmentCard(record: state.records[index]),
                    ),
            );
          },
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text(
        "HỒ SƠ ĐIỀU TRỊ",
        style: TextStyle(
          color: Color(0xFF191C1F),
          fontWeight: FontWeight.w700,
          fontSize: 16,
          letterSpacing: 1.2,
        ),
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Color(0xFF191C1F),
          size: 20,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
