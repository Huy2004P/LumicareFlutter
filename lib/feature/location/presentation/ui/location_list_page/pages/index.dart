import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import 'package:lumi_care/feature/location/application/constants/route_constants.dart';
import '../bloc/location_bloc.dart';
import '../widgets/location_card.dart';
import '../widgets/location_empty_state.dart';
import '../widgets/location_add_button.dart';

class LocationListPage extends StatefulWidget {
  final int patientId;
  const LocationListPage({super.key, required this.patientId});

  @override
  State<LocationListPage> createState() => _LocationListPageState();
}

class _LocationListPageState extends State<LocationListPage> {
  @override
  void initState() {
    super.initState();
    _onRefresh();
  }

  /// Hàm dùng chung để tải lại dữ liệu
  Future<void> _onRefresh() async {
    context.read<LocationBloc>().add(LocationListStarted(widget.patientId));
  }

  void _onDelete(LocationEntity loc) {
    final bloc = context.read<LocationBloc>();
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text(
          "Xóa địa chỉ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: Text("Ông có chắc muốn xóa '${loc.label}' không?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text("Hủy"),
          ),
          TextButton(
            onPressed: () {
              bloc.add(
                LocationListDeleted(
                  locationId: loc.id,
                  userId: widget.patientId,
                ),
              );
              Navigator.pop(ctx);
            },
            child: const Text("Xác nhận", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  void _onSetDefault(LocationEntity loc) {
    if (loc.isDefault) return;
    final bloc = context.read<LocationBloc>();
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text(
          "Đặt mặc định",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: Text("Dùng '${loc.label}' làm địa chỉ mặc định nhen?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text("Hủy"),
          ),
          TextButton(
            onPressed: () {
              bloc.add(
                LocationListSetDefault(
                  locationId: loc.id,
                  userId: widget.patientId,
                ),
              );
              Navigator.pop(ctx);
            },
            child: const Text(
              "Đồng ý",
              style: TextStyle(color: Color(0xFF0075FF)),
            ),
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
            "ĐỊA CHỈ CỦA TÔI",
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
        body: Stack(
          children: [
            BlocConsumer<LocationBloc, LocationState>(
              listener: (context, state) {
                if (state is LocationListFailure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.message),
                      backgroundColor: Colors.redAccent,
                    ),
                  );
                }
              },
              builder: (context, state) {
                if (state is LocationListLoading) {
                  return const Center(
                    child: CircularProgressIndicator(color: Color(0xFF0075FF)),
                  );
                }

                if (state is LocationListSuccess) {
                  final locations = state.dataPack.locations;

                  // Wrap nội dung trong RefreshIndicator
                  return RefreshIndicator(
                    color: const Color(0xFF0075FF),
                    onRefresh: _onRefresh,
                    child: locations.isEmpty
                        ? const SingleChildScrollView(
                            physics: AlwaysScrollableScrollPhysics(),
                            child: SizedBox(
                              height:
                                  500, // Đảm bảo đủ chiều cao để kéo refresh
                              child: LocationEmptyState(),
                            ),
                          )
                        : ListView.builder(
                            physics: const AlwaysScrollableScrollPhysics(),
                            padding: const EdgeInsets.fromLTRB(20, 12, 20, 120),
                            itemCount: locations.length,
                            itemBuilder: (ctx, i) => LocationCard(
                              location: locations[i],
                              onTap: () => _onSetDefault(locations[i]),
                              onDelete: () => _onDelete(locations[i]),
                            ),
                          ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: LocationAddButton(
                onTap: () async {
                  final res = await context.pushNamed(
                    LocationRoutes.addLocationScreen,
                    extra: widget.patientId,
                  );
                  if (res == true && mounted) {
                    _onRefresh();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
