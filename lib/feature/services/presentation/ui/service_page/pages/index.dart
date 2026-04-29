import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../bloc/service_bloc.dart';
import '../bloc/service_event.dart';
import '../bloc/service_state.dart';
import '../widgets/service_card.dart';
import '../widgets/category_picker_sheet.dart';
import '../widgets/service_shimmer.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetIt.instance<ServiceBloc>()..add(ServiceDataFetched()),
      child: const ServicesView(),
    );
  }
}

class ServicesView extends StatefulWidget {
  const ServicesView({super.key});

  @override
  State<ServicesView> createState() => _ServicesViewState();
}

class _ServicesViewState extends State<ServicesView> {
  final TextEditingController searchController = TextEditingController();
  String selectedCategory = "Tất cả";

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _openCategoryPicker(List<String> categories) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => CategoryPickerSheet(
        categories: categories,
        selectedCategory: selectedCategory,
        onSelected: (category) {
          setState(() => selectedCategory = category);
          context.read<ServiceBloc>().add(
            ServiceSearchChanged(category == "Tất cả" ? "" : category),
          );
        },
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
            "DỊCH VỤ Y TẾ",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              letterSpacing: 1.2,
              color: Color(0xFF191C1F),
            ),
          ),
        ),
        body: BlocBuilder<ServiceBloc, ServiceState>(
          builder: (context, state) {
            if (state is ServiceLoading) return const ServiceShimmer();

            if (state is ServiceLoaded) {
              final List<String> categories = [
                "Tất cả",
                ...state.allSpecialties.map((s) => s.name as String),
              ];

              return Column(
                children: [
                  _buildTopFilterBar(categories),
                  Expanded(
                    child: state.filteredServices.isEmpty
                        ? const Center(child: Text("Không tìm thấy dịch vụ"))
                        : RefreshIndicator(
                            color: const Color(0xFF0075FF),
                            onRefresh: () async => context
                                .read<ServiceBloc>()
                                .add(ServiceDataFetched()),
                            child: ListView.separated(
                              padding: const EdgeInsets.fromLTRB(
                                20,
                                12,
                                20,
                                120,
                              ),
                              itemCount: state.filteredServices.length,
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 12),
                              itemBuilder: (context, index) {
                                final item = state.filteredServices[index];

                                // --- TRẢ LẠI LOGIC GỐC CỦA HUY ĐỂ FIX LỖI TYPE ---
                                final match = state.allSpecialties.where(
                                  (s) => s.id == item.specialtyId,
                                );
                                String specName = match.isNotEmpty
                                    ? match.first.name
                                    : "Khám tổng quát";

                                return ServiceCard(
                                  item: item,
                                  specialtyName: specName,
                                );
                              },
                            ),
                          ),
                  ),
                ],
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }

  Widget _buildTopFilterBar(List<String> categories) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 16),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 48,
            decoration: BoxDecoration(
              color: const Color(0xFFF4F4F4),
              borderRadius: BorderRadius.circular(9999),
            ),
            child: TextField(
              controller: searchController,
              onChanged: (value) =>
                  context.read<ServiceBloc>().add(ServiceSearchChanged(value)),
              decoration: const InputDecoration(
                hintText: "Tìm tên dịch vụ...",
                hintStyle: TextStyle(color: Color(0xFF8D969E), fontSize: 14),
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Color(0xFF0075FF),
                  size: 22,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 10),
              ),
            ),
          ),
          const SizedBox(height: 12),
          InkWell(
            onTap: () => _openCategoryPicker(categories),
            borderRadius: BorderRadius.circular(12),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: const Color(0xFF0075FF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(Icons.filter_list_rounded, color: Colors.white),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      "Chuyên khoa: $selectedCategory",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.white70,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
