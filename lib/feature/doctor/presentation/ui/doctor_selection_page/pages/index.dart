import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart' show GetIt;
import '../bloc/doctor_bloc.dart';
import '../bloc/doctor_event.dart';
import '../bloc/doctor_state.dart';
import '../widgets/doctor_app_bar.dart';
import '../widgets/doctor_search_bar.dart';
import '../widgets/doctor_card.dart';

class DoctorPage extends StatelessWidget {
  final int? specialtyId;
  const DoctorPage({super.key, this.specialtyId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DoctorBloc>(
      create: (context) =>
          GetIt.I<DoctorBloc>()..add(DoctorStarted(specialtyId: specialtyId)),
      child: DoctorContent(specialtyId: specialtyId),
    );
  }
}

class DoctorContent extends StatefulWidget {
  final int? specialtyId;
  const DoctorContent({super.key, this.specialtyId});

  @override
  State<DoctorContent> createState() => _DoctorContentState();
}

class _DoctorContentState extends State<DoctorContent> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7F9),
      appBar: const DoctorAppBar(title: "Chọn chuyên gia"),
      body: BlocBuilder<DoctorBloc, DoctorState>(
        builder: (context, state) {
          List<String> options = [];
          if (state is DoctorSuccess) {
            options = state.doctors.map((d) => d.fullName).toList();
            options.addAll(state.dynamicSuggestions);
            options = options.toSet().toList();
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DoctorSearchBar(
                controller: _searchController,
                focusNode: _searchFocusNode,
                options: options,
                specialtyId: widget.specialtyId,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 10, 24, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Chuyên gia phụ trách",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF8D969E),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _searchController.clear();
                        context.read<DoctorBloc>().add(
                          DoctorStarted(specialtyId: widget.specialtyId),
                        );
                      },
                      child: const Text(
                        "Đặt lại",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF0075FF),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: _buildList(state)),
            ],
          );
        },
      ),
    );
  }

  Widget _buildList(DoctorState state) {
    if (state is DoctorLoading)
      return const Center(
        child: CircularProgressIndicator(color: Color(0xFF0075FF)),
      );
    if (state is DoctorSuccess) {
      if (state.doctors.isEmpty)
        return const Center(child: Text("Không tìm thấy chuyên gia."));
      return ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
        itemCount: state.doctors.length,
        itemBuilder: (ctx, i) => DoctorCard(doctor: state.doctors[i]),
      );
    }
    return const SizedBox();
  }
}
