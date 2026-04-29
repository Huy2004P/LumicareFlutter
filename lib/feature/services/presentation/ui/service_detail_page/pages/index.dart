import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../bloc/service_detail_bloc.dart';
import '../bloc/service_detail_event.dart';
import '../bloc/service_detail_state.dart';
import '../widgets/service_detail_header.dart';
import '../widgets/service_main_info.dart';
import '../widgets/service_content_card.dart';

class ServiceDetailPage extends StatefulWidget {
  final ServiceEntity service;
  final String specialtyName;

  const ServiceDetailPage({
    super.key,
    required this.service,
    required this.specialtyName,
  });

  @override
  State<ServiceDetailPage> createState() => _ServiceDetailPageState();
}

class _ServiceDetailPageState extends State<ServiceDetailPage> {
  late ServiceDetailBloc detailBloc;

  @override
  void initState() {
    super.initState();
    detailBloc = GetIt.I<ServiceDetailBloc>()
      ..add(LoadServiceDetailEvent(widget.service.id));
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: BlocProvider.value(
        value: detailBloc,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: BlocBuilder<ServiceDetailBloc, ServiceDetailState>(
            builder: (context, state) {
              if (state is ServiceDetailLoading) {
                return const Center(
                  child: CircularProgressIndicator(color: Color(0xFF0075FF)),
                );
              }

              if (state is ServiceDetailError) {
                return Center(
                  child: Text(
                    state.message,
                    style: const TextStyle(color: Colors.red),
                  ),
                );
              }

              if (state is ServiceDetailLoaded) {
                final serviceDetail = state.detail.service;

                return CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    ServiceDetailHeader(imageUrl: serviceDetail.image),
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          ServiceMainInfo(
                            service: serviceDetail,
                            specialtyName: widget.specialtyName,
                          ),
                          ServiceContentCard(
                            title: "Mô tả chi tiết",
                            content: serviceDetail.contentMarkdown,
                          ),
                          const SizedBox(height: 120),
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
      ),
    );
  }
}
