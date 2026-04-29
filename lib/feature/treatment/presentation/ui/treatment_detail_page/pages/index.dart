import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/treatment_detail_bloc.dart';
import '../widgets/diagnosis_section.dart';
import '../widgets/medicine_list_section.dart';
import '../widgets/treatment_plan_section.dart';
import '../widgets/re_exam_card.dart';

class TreatmentDetailPage extends StatefulWidget {
  final int bookingId;
  const TreatmentDetailPage({super.key, required this.bookingId});

  @override
  State<TreatmentDetailPage> createState() => _TreatmentDetailPageState();
}

class _TreatmentDetailPageState extends State<TreatmentDetailPage> {
  @override
  void initState() {
    super.initState();
    context.read<TreatmentDetailBloc>().add(
      TreatmentDetailFetched(widget.bookingId),
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
        appBar: _buildAppBar(context),
        body: BlocBuilder<TreatmentDetailBloc, TreatmentDetailState>(
          builder: (context, state) {
            if (state.status == TreatmentDetailStatus.loading) {
              return const Center(
                child: CircularProgressIndicator(color: Color(0xFF0075FF)),
              );
            }
            if (state.status == TreatmentDetailStatus.failure) {
              return Center(
                child: Text(state.errorMessage ?? "Lỗi tải dữ liệu"),
              );
            }
            if (state.treatmentData == null) {
              return const Center(child: Text("Không tìm thấy dữ liệu"));
            }

            final data = state.treatmentData!;
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  DiagnosisSection(
                    symptoms: data.symptoms,
                    diagnosis: data.diagnosis,
                  ),
                  const SizedBox(height: 16),
                  MedicineListSection(medicines: data.medicines),
                  const SizedBox(height: 16),
                  TreatmentPlanSection(plan: data.treatmentPlan),
                  const SizedBox(height: 16),
                  if (data.reExamDate.isNotEmpty)
                    ReExamCard(date: data.reExamDate),
                  const SizedBox(height: 10),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text(
        "CHI TIẾT ĐIỀU TRỊ",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16,
          letterSpacing: 1.2,
          color: Color(0xFF191C1F),
        ),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white,
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
