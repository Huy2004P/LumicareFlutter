import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/doctor_bloc.dart';
import '../bloc/doctor_event.dart';
import 'doctor_filter_sheet.dart';

class DoctorSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final List<String> options;
  final int? specialtyId;

  const DoctorSearchBar({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.options,
    this.specialtyId,
  });

  @override
  Widget build(BuildContext context) {
    bool isLocked = specialtyId != null;

    return Container(
      margin: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFFF4F4F4), width: 1.5),
              ),
              child: RawAutocomplete<String>(
                textEditingController: controller,
                focusNode: focusNode,
                optionsBuilder: (val) => val.text.isEmpty
                    ? const Iterable<String>.empty()
                    : options.where(
                        (o) => o.toLowerCase().contains(val.text.toLowerCase()),
                      ),
                onSelected: (s) => context.read<DoctorBloc>().add(
                  DoctorStarted(searchQuery: s, specialtyId: specialtyId),
                ),
                fieldViewBuilder: (ctx, ctrl, node, onSubmitted) => TextField(
                  controller: ctrl,
                  focusNode: node,
                  decoration: const InputDecoration(
                    hintText: "Tìm tên bác sĩ...",
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.search_rounded,
                      color: Color(0xFF0075FF),
                      size: 20,
                    ),
                  ),
                ),
                optionsViewBuilder: (ctx, onSelected, opts) => Align(
                  alignment: Alignment.topLeft,
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      width: MediaQuery.of(ctx).size.width - 100,
                      constraints: const BoxConstraints(maxHeight: 200),
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: opts.length,
                        itemBuilder: (ctx, i) => ListTile(
                          title: Text(opts.elementAt(i)),
                          onTap: () => onSelected(opts.elementAt(i)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          GestureDetector(
            onTap: () {
              if (isLocked) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      "Đang hiển thị bác sĩ theo chuyên khoa yêu cầu",
                    ),
                  ),
                );
                return;
              }
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                builder: (ctx) => BlocProvider.value(
                  value: context.read<DoctorBloc>(),
                  child: DoctorFilterSheet(searchController: controller),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: isLocked ? Colors.grey[200] : const Color(0xFF0075FF),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                Icons.tune_rounded,
                color: isLocked ? Colors.grey : Colors.white,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
