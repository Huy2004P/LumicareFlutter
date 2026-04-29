import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/feature/auth/data/datasources/auth_local_datasource.dart';
import 'package:lumi_care/feature/booking/application/constants/route_constants.dart';
import 'package:lumi_care/feature/doctor/application/constants/route_constants.dart';
import 'package:lumi_care/feature/home/application/constants/route_constants.dart';
import 'package:lumi_care/feature/treatment/application/constants/route_constants.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_event.dart';
import '../bloc/home_state.dart';
import 'quick_menu_item.dart';
import 'section_title.dart';
import 'promo_banner.dart';
import 'specialty_grid.dart';
import 'clinic_horizontal_list.dart';
import 'doctor_card.dart';
import 'feedback_horizontal_list.dart';

class HomeBodyView extends StatefulWidget {
  const HomeBodyView({super.key});
  @override
  State<HomeBodyView> createState() => _HomeBodyViewState();
}

class _HomeBodyViewState extends State<HomeBodyView> {
  final ScrollController _scrollController = ScrollController();
  bool _isRequesting = false;
  bool _isExpandedSpecialties = false;
  bool _isExpandedClinics = false;
  bool _isExpandedDoctors = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_isExpandedDoctors && _scrollController.hasClients) {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent * 0.9) {
        final state = context.read<HomeBloc>().state;
        if (state is HomeLoaded &&
            state.hasMoreDoctors &&
            !state.isLoadMoreDoctors &&
            !_isRequesting) {
          _isRequesting = true;
          context.read<HomeBloc>().add(HomeLoadMoreDoctors());
          Future.delayed(
            const Duration(seconds: 1),
            () => _isRequesting = false,
          );
        }
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentUserId =
        GetIt.instance<AuthLocalDataSource>().getUser()?.id ?? 0;

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is HomeLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is HomeError) return Center(child: Text(state.message));

        if (state is HomeLoaded) {
          final cleanedServices = state.services
              .map(
                (s) => s.image.contains('notfound') || s.image.length < 30
                    ? s.copyWith(image: "")
                    : s,
              )
              .toList();
          final specialtiesToShow = _isExpandedSpecialties
              ? state.specialties
              : state.specialties.take(4).toList();
          final clinicsToShow = _isExpandedClinics
              ? state.clinics
              : state.clinics.take(4).toList();
          final doctorsToShow = _isExpandedDoctors
              ? state.doctors
              : state.doctors.take(3).toList();

          return RefreshIndicator(
            onRefresh: () async =>
                context.read<HomeBloc>().add(HomeRefreshRequested()),
            child: CustomScrollView(
              controller: _scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: _buildQuickMenu(context, currentUserId),
                ),
                SliverToBoxAdapter(
                  child: PromoBanner(
                    featuredService: cleanedServices.isNotEmpty
                        ? cleanedServices.first
                        : null,
                  ),
                ),
                SliverToBoxAdapter(
                  child: SectionTitle(
                    title: "Chuyên khoa phổ biến",
                    action: _isExpandedSpecialties ? "Thu gọn" : "Xem tất cả",
                    onTap: () => setState(() {
                      _isExpandedSpecialties = !_isExpandedSpecialties;
                      if (_isExpandedSpecialties && state.hasMoreSpecialties) {
                        context.read<HomeBloc>().add(HomeLoadMoreSpecialties());
                      }
                    }),
                  ),
                ),

                SpecialtyGrid(specialties: specialtiesToShow),

                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const SizedBox(height: 24),
                      SectionTitle(
                        title: "Cơ sở y tế nổi bật",
                        action: _isExpandedClinics ? "Thu gọn" : "Xem thêm",
                        onTap: () => setState(() {
                          _isExpandedClinics = !_isExpandedClinics;
                          if (_isExpandedClinics && state.hasMoreClinics) {
                            context.read<HomeBloc>().add(HomeLoadMoreClinics());
                          }
                        }),
                      ),
                      ClinicHorizontalList(clinics: clinicsToShow),
                    ],
                  ),
                ),

                SliverPersistentHeader(
                  pinned: true,
                  delegate: _SliverAppBarDelegate(
                    minHeight: 60,
                    maxHeight: 60,
                    child: Container(
                      color: Colors.white,
                      child: SectionTitle(
                        title: "Bác sĩ nổi bật",
                        action: _isExpandedDoctors ? "Thu gọn" : "Xem thêm",
                        onTap: () => setState(
                          () => _isExpandedDoctors = !_isExpandedDoctors,
                        ),
                      ),
                    ),
                  ),
                ),

                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (ctx, i) => DoctorCard(
                      doctor: doctorsToShow[i],
                      onTap: () => context.pushNamed(
                        DoctorRoutes.doctorDetailScreen,
                        extra: doctorsToShow[i].id,
                      ),
                    ),
                    childCount: doctorsToShow.length,
                  ),
                ),

                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SectionTitle(
                        title: "Trải nghiệm khách hàng",
                        action: state.hasMoreFeedbacks ? "Xem thêm" : "",
                        onTap: () => context.read<HomeBloc>().add(
                          HomeLoadMoreFeedbacks(),
                        ),
                      ),
                      FeedbackHorizontalList(feedbacks: state.feedbacks),
                      const SizedBox(height: 120),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildQuickMenu(BuildContext context, int currentUserId) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.blue.withOpacity(0.08),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          QuickMenuItem(
            icon: Icons.calendar_month_rounded,
            label: "Đặt lịch",
            color: Colors.blue,
            onTap: () => context.pushNamed(BookingRoutes.bookingScreen),
          ),
          QuickMenuItem(
            icon: Icons.assignment_rounded,
            label: "Bệnh án",
            color: Colors.green,
            onTap: () => currentUserId != 0
                ? context.pushNamed(
                    TreatmentRoutes.treatmentListScreen,
                    extra: currentUserId,
                  )
                : ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Vui lòng đăng nhập để xem bệnh án"),
                    ),
                  ),
          ),
          QuickMenuItem(
            icon: Icons.medical_services_rounded,
            label: "Dịch vụ",
            color: Colors.blueAccent,
            onTap: () {
              StatefulNavigationShell.of(context).goBranch(1);
            },
          ),
          QuickMenuItem(
            icon: Icons.newspaper_rounded,
            label: "Tin tức",
            color: Colors.purple,
            onTap: () => context.pushNamed(HomeRoutes.newsScreen),
          ),
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });
  final double minHeight, maxHeight;
  final Widget child;
  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => maxHeight;
  @override
  Widget build(BuildContext ctx, double s, bool o) =>
      SizedBox.expand(child: child);
  @override
  bool shouldRebuild(_SliverAppBarDelegate old) => true;
}
