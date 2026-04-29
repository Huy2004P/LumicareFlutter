import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../bloc/doctor_bloc.dart';
import '../bloc/doctor_event.dart';
import '../bloc/doctor_state.dart';
import '../widgets/doctor_header.dart';
import '../widgets/doctor_info_list.dart';
import '../widgets/doctor_intro.dart';
import '../widgets/doctor_clinic_card.dart';
import '../widgets/doctor_booking_button.dart';

class DoctorDetailPage extends StatefulWidget {
  final int doctorId;
  const DoctorDetailPage({super.key, required this.doctorId});

  @override
  State<DoctorDetailPage> createState() => _DoctorDetailPageState();
}

class _DoctorDetailPageState extends State<DoctorDetailPage> {
  late DoctorDetailBloc detailBloc;

  @override
  void initState() {
    super.initState();
    detailBloc = GetIt.I<DoctorDetailBloc>()
      ..add(DoctorDetailStarted(widget.doctorId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: detailBloc,
      child: Scaffold(
        backgroundColor: const Color(0xFFF4F7F9),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "HỒ SƠ CHUYÊN GIA",
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
            onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
          ),
        ),
        body: BlocBuilder<DoctorDetailBloc, DoctorDetailState>(
          builder: (context, state) {
            if (state is DoctorDetailLoading) {
              return const Center(
                child: CircularProgressIndicator(color: Color(0xFF0075FF)),
              );
            }
            if (state is DoctorDetailSuccess) {
              final doc = state.doctor;
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    DoctorHeader(doctor: doc),
                    DoctorInfoList(doctor: doc),
                    DoctorIntro(description: doc.description),
                    DoctorClinicCard(
                      clinicName: doc.clinicName,
                      roomName: doc.roomName,
                    ),
                    const SizedBox(height: 120),
                  ],
                ),
              );
            }
            return const SizedBox.shrink();
          },
        ),
        bottomSheet: DoctorBookingButton(onTap: () {}),
      ),
    );
  }
}
