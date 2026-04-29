import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get_it/get_it.dart';
import '../bloc/clinic_bloc.dart';
import '../bloc/clinic_event.dart';
import '../bloc/clinic_state.dart';
import '../../room/bloc/room_bloc.dart'; // Import RoomBloc
import '../widgets/clinic_app_bar.dart';
import '../widgets/clinic_main_info.dart';
import '../widgets/clinic_section_card.dart';
import '../../room/widgets/room_list_vertical.dart'; // Import widget list ngang

class ClinicDetailPage extends StatefulWidget {
  final int clinicId;
  const ClinicDetailPage({super.key, required this.clinicId});

  @override
  State<ClinicDetailPage> createState() => _ClinicDetailPageState();
}

class _ClinicDetailPageState extends State<ClinicDetailPage> {
  late ClinicDetailBloc _clinicBloc;
  late RoomBloc _roomBloc;

  @override
  void initState() {
    super.initState();
    _clinicBloc = GetIt.I<ClinicDetailBloc>()
      ..add(ClinicDetailStarted(widget.clinicId));

    // Khởi tạo RoomBloc và gọi event lấy danh sách phòng theo clinicId
    _roomBloc = GetIt.I<RoomBloc>()
      ..add(GetRoomsByClinicEvent(widget.clinicId));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _clinicBloc),
        BlocProvider.value(value: _roomBloc),
      ],
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: BlocBuilder<ClinicDetailBloc, ClinicState>(
          builder: (context, state) {
            if (state is ClinicDetailLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is ClinicDetailSuccess) {
              final clinic = state.clinic;
              return CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  ClinicSliverAppBar(clinic: clinic),
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        ClinicMainInfoCard(clinic: clinic),

                        // Gắn danh sách phòng vào ClinicDetailPage
                        BlocBuilder<RoomBloc, RoomState>(
                          builder: (context, roomState) {
                            if (roomState is RoomLoading) {
                              return const ClinicSectionCard(
                                title: "Danh sách phòng khám",
                                icon: Icons.meeting_room_outlined,
                                child: SizedBox(
                                  height: 100,
                                  child: Center(
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  ),
                                ),
                              );
                            }

                            if (roomState is RoomLoadSuccess) {
                              // Nếu có dữ liệu, hiển thị list ngang
                              if (roomState.rooms.isNotEmpty) {
                                return ClinicSectionCard(
                                  title: "Danh sách phòng khám",
                                  icon: Icons.meeting_room_outlined,
                                  child: RoomVerticalList(
                                    rooms: roomState.rooms,
                                  ),
                                );
                              }

                              // Nếu danh sách rỗng, hiện thông báo nhẹ để biết là đã load xong nhưng ko có data
                              return const ClinicSectionCard(
                                title: "Danh sách phòng khám",
                                icon: Icons.meeting_room_outlined,
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    "Cơ sở này hiện chưa cập nhật phòng khám cụ thể.",
                                  ),
                                ),
                              );
                            }

                            if (roomState is RoomLoadFailure) {
                              return ClinicSectionCard(
                                title: "Danh sách phòng khám",
                                icon: Icons.error_outline,
                                child: Text("Lỗi: ${roomState.message}"),
                              );
                            }

                            return const SizedBox.shrink();
                          },
                        ),

                        ClinicSectionCard(
                          title: "Thông tin chi tiết",
                          icon: Icons.info_outline_rounded,
                          child: HtmlWidget(
                            clinic.contentHtml,
                            textStyle: TextStyle(
                              color: Colors.grey[800],
                              height: 1.6,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                      ],
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
}
