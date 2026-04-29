import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import 'package:lumi_care/feature/doctor/application/constants/route_constants.dart';
import 'package:lumi_care/feature/services/application/constants/route_constants.dart';
import 'package:lumi_care/feature/specialty/application/constants/route_constants.dart';
import '../bloc/home_search_bloc.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () => _focusNode.requestFocus());
  }

  @override
  void dispose() {
    _searchController.dispose();
    _focusNode.dispose();
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Color(0xFF191C1F),
              size: 20,
            ),
            onPressed: () => context.pop(),
          ),
          titleSpacing: 0,
          title: Container(
            height: 44,
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              color: const Color(0xFFF4F4F4),
              borderRadius: BorderRadius.circular(9999),
            ),
            child: TextField(
              controller: _searchController,
              focusNode: _focusNode,
              onChanged: (value) {
                context.read<HomeSearchBloc>().add(
                  HomeSearchQueryChanged(value),
                );
                setState(() {});
              },
              decoration: InputDecoration(
                hintText: "Tìm bác sĩ, chuyên khoa...",
                hintStyle: const TextStyle(
                  color: Color(0xFF8D969E),
                  fontSize: 14,
                ),
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  color: Color(0xFF0075FF),
                  size: 22,
                ),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(
                          Icons.cancel_rounded,
                          color: Color(0xFF8D969E),
                          size: 20,
                        ),
                        onPressed: () {
                          _searchController.clear();
                          context.read<HomeSearchBloc>().add(
                            HomeSearchClearRequested(),
                          );
                          setState(() {});
                        },
                      )
                    : null,
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
              ),
            ),
          ),
        ),
        body: BlocBuilder<HomeSearchBloc, HomeSearchState>(
          builder: (context, state) {
            if (state.status == HomeSearchStatus.loading) {
              return _buildShimmerSkeleton();
            }

            if (state.status == HomeSearchStatus.success) {
              if (state.results.isEmpty && _searchController.text.isNotEmpty) {
                return _buildEmptyState();
              }
              if (state.results.isNotEmpty) {
                return _buildSearchResultList(state.results);
              }
            }

            if (state.status == HomeSearchStatus.failure) {
              return Center(
                child: Text(
                  state.errorMessage,
                  style: const TextStyle(color: Color(0xFFE23B4A)),
                ),
              );
            }

            return _buildInitialState();
          },
        ),
      ),
    );
  }

  Widget _buildShimmerSkeleton() {
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: 8,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                color: const Color(0xFFF4F4F4),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 14,
                  width: 200,
                  color: const Color(0xFFF4F4F4),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 10,
                  width: 120,
                  color: const Color(0xFFF4F4F4),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInitialState() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(32),
              decoration: const BoxDecoration(
                color: Color(0xFFF4F4F4),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.manage_search_rounded,
                size: 80,
                color: Color(0xFF0075FF),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Tìm kiếm nhanh chóng",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFF191C1F),
                letterSpacing: -0.5,
              ),
            ),
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 48),
              child: Text(
                "Nhập tên bác sĩ hoặc dịch vụ để chúng tôi hỗ trợ bạn tốt nhất.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF505A63),
                  height: 1.5,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchResultList(List<HomeGlobalSearchEntity> results) {
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: results.length,
      itemBuilder: (context, index) {
        final item = results[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: const Color(0xFFF4F4F4), width: 1.5),
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.all(12),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                item.image,
                width: 52,
                height: 52,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  width: 52,
                  height: 52,
                  color: const Color(0xFFF4F4F4),
                  child: const Icon(Icons.person, color: Color(0xFF8D969E)),
                ),
              ),
            ),
            title: Text(
              item.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xFF191C1F),
                fontSize: 15,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Row(
                children: [
                  _buildTypeBadge(item.type),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      item.subtitle,
                      style: const TextStyle(
                        color: Color(0xFF505A63),
                        fontSize: 12,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              _focusNode.unfocus();

              final type = item.type.toUpperCase();
              final int targetId = int.parse(item.id.toString());

              if (type == 'DOCTOR') {
                context.pushNamed(
                  DoctorRoutes.doctorDetailScreen,
                  extra: targetId,
                );
              } else if (type == 'SPECIALTY') {
                context.pushNamed(
                  SpecialtyRoutes.specialtyDetailScreen,
                  extra: targetId,
                );
              } else if (type == 'SERVICE') {
                context.pushNamed(
                  ServiceRoutes.serviceDetailScreen,
                  extra: {
                    'service': ServiceEntity(
                      id: targetId,
                      name: item.title,
                      price: 0.0,
                      specialtyId: 0,
                      description: item.subtitle,
                      image: item.image,
                      contentHtml: '',
                      contentMarkdown: '',
                      rating: 0.0,
                    ),
                    'specialtyName': item.subtitle,
                  },
                );
              }
            },
          ),
        );
      },
    );
  }

  Widget _buildTypeBadge(String type) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFF0075FF).withOpacity(0.1),
        borderRadius: BorderRadius.circular(9999),
      ),
      child: Text(
        type,
        style: const TextStyle(
          color: Color(0xFF0075FF),
          fontSize: 9,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search_off_rounded, size: 100, color: Color(0xFFF4F4F4)),
          SizedBox(height: 16),
          Text(
            "Không tìm thấy kết quả",
            style: TextStyle(
              color: Color(0xFF8D969E),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
