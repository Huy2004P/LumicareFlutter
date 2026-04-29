import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:lumi_care/core/network/domain/entities/entities.dart'
    show PatientProfileEntity;
import 'package:lumi_care/feature/patient/application/constants/route_constants.dart';
import '../bloc/patient_bloc.dart';
import '../bloc/patient_event.dart';
import '../bloc/patient_state.dart';
import '../widgets/patient_card.dart';
import '../widgets/patient_empty_state.dart';

class PatientListPage extends StatefulWidget {
  final int userId;
  final int? initialSelectedId;
  const PatientListPage({
    super.key,
    required this.userId,
    this.initialSelectedId,
  });

  @override
  State<PatientListPage> createState() => _PatientListPageState();
}

class _PatientListPageState extends State<PatientListPage> {
  int? selectedId;

  @override
  void initState() {
    super.initState();
    selectedId = widget.initialSelectedId;
    _onRefresh();
  }

  /// Hàm xử lý logic refresh dữ liệu
  Future<void> _onRefresh() async {
    context.read<PatientBloc>().add(LoadPatientProfilesEvent(widget.userId));
  }

  void _onConfirmSelection(List<PatientProfileEntity> profiles) {
    if (selectedId != null) {
      final profile = profiles.firstWhere(
        (element) => element.id == selectedId,
      );
      Navigator.pop(context, profile);
    }
  }

  void _onDelete(int profileId) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text(
          "Xóa hồ sơ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: const Text("Bạn có chắc chắn muốn xóa hồ sơ này không?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text("Hủy"),
          ),
          TextButton(
            onPressed: () {
              context.read<PatientBloc>().add(
                DeletePatientProfileEvent(profileId, widget.userId),
              );
              Navigator.pop(ctx);
            },
            child: const Text("Xác nhận", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "HỒ SƠ NGƯỜI BỆNH",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              letterSpacing: 1.2,
              color: Color(0xFF191C1F),
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
          actions: [
            // Thêm nút refresh trên AppBar
            IconButton(
              icon: const Icon(Icons.refresh_rounded, color: Color(0xFF0075FF)),
              onPressed: _onRefresh,
            ),
          ],
        ),
        body: BlocBuilder<PatientBloc, PatientState>(
          builder: (context, state) {
            if (state.status == PatientStatus.loading) {
              return const Center(
                child: CircularProgressIndicator(color: Color(0xFF0075FF)),
              );
            }

            if (state.profiles.isEmpty) {
              return RefreshIndicator(
                onRefresh: _onRefresh,
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: const PatientEmptyState(),
                  ),
                ),
              );
            }

            final List<PatientProfileEntity> sortedProfiles = List.from(
              state.profiles,
            );
            if (selectedId != null) {
              sortedProfiles.sort((a, b) {
                if (a.id == selectedId) return -1;
                if (b.id == selectedId) return 1;
                return 0;
              });
            }

            return RefreshIndicator(
              color: const Color(0xFF0075FF),
              onRefresh: _onRefresh,
              child: ListView.builder(
                // Physics này giúp list luôn có thể kéo dù item ít, để trigger refresh
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(20, 12, 20, 100),
                itemCount: sortedProfiles.length,
                itemBuilder: (context, index) {
                  final item = sortedProfiles[index];
                  return PatientCard(
                    profile: item,
                    isSelected: selectedId == item.id,
                    onTap: () => setState(() => selectedId = item.id),
                    onEdit: () => context.pushNamed(
                      PatientRoutes.patientUpdateScreen,
                      extra: item,
                    ),
                    onDelete: () => _onDelete(item.id),
                  );
                },
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.pushNamed(
            PatientRoutes.patientCreateScreen,
            extra: widget.userId,
          ),
          backgroundColor: const Color(0xFF0075FF),
          elevation: 0,
          child: const Icon(Icons.add_rounded, color: Colors.white, size: 30),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 32),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Color(0xFFF4F4F4))),
          ),
          child: SizedBox(
            height: 52,
            child: ElevatedButton(
              onPressed: () => _onConfirmSelection(
                context.read<PatientBloc>().state.profiles,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0075FF),
                foregroundColor: Colors.white,
                elevation: 0,
                shape: const StadiumBorder(),
              ),
              child: const Text(
                "XÁC NHẬN HỒ SƠ",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
