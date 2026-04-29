import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/doctor_bloc.dart';
import '../bloc/doctor_event.dart';
import '../bloc/doctor_state.dart';
import 'filter_specialty_grid.dart';
import 'filter_price_slider.dart';

class DoctorFilterSheet extends StatefulWidget {
  final TextEditingController searchController;
  const DoctorFilterSheet({super.key, required this.searchController});

  @override
  State<DoctorFilterSheet> createState() => _DoctorFilterSheetState();
}

class _DoctorFilterSheetState extends State<DoctorFilterSheet> {
  int? selectedSpecialtyId;
  RangeValues priceRange = const RangeValues(0, 2000000);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorBloc, DoctorState>(
      builder: (context, state) {
        if (state is! DoctorSuccess) {
          return const SizedBox(
            height: 200,
            child: Center(
              child: CircularProgressIndicator(color: Color(0xFF0075FF)),
            ),
          );
        }

        return Container(
          padding: const EdgeInsets.only(top: 12),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildHandleBar(),
              _buildHeader(context),
              Flexible(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "CHUYÊN KHOA",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF8D969E),
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(height: 16),
                      FilterSpecialtyGrid(
                        specialties: state.allSpecialties,
                        selectedId: selectedSpecialtyId,
                        onSelect: (id) =>
                            setState(() => selectedSpecialtyId = id),
                      ),
                      const SizedBox(height: 32),
                      FilterPriceSlider(
                        values: priceRange,
                        onChanged: (val) => setState(() => priceRange = val),
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
              _buildApplyButton(context),
            ],
          ),
        );
      },
    );
  }

  Widget _buildHandleBar() => Center(
    child: Container(
      width: 40,
      height: 4,
      decoration: BoxDecoration(
        color: const Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(2),
      ),
    ),
  );

  Widget _buildHeader(BuildContext context) => Padding(
    padding: const EdgeInsets.fromLTRB(24, 8, 12, 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Bộ lọc tìm kiếm",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Color(0xFF191C1F),
          ),
        ),
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.close_rounded, color: Color(0xFF8D969E)),
        ),
      ],
    ),
  );

  Widget _buildApplyButton(BuildContext context) => Container(
    padding: const EdgeInsets.fromLTRB(24, 0, 24, 32),
    width: double.infinity,
    child: SizedBox(
      height: 54,
      child: ElevatedButton(
        onPressed: () {
          context.read<DoctorBloc>().add(
            DoctorStarted(
              specialtyId: selectedSpecialtyId,
              minPrice: priceRange.start,
              maxPrice: priceRange.end,
              searchQuery: widget.searchController.text,
            ),
          );
          Navigator.pop(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF0075FF),
          foregroundColor: Colors.white,
          elevation: 0,
          shape: const StadiumBorder(),
        ),
        child: const Text(
          "ÁP DỤNG",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 14,
            letterSpacing: 0.5,
          ),
        ),
      ),
    ),
  );
}
