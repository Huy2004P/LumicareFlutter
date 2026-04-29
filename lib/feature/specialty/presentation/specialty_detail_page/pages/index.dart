import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../bloc/specialty_detail_bloc.dart';

class SpecialtyDetailPage extends StatefulWidget {
  final int specialtyId;
  final String specialtyName;

  const SpecialtyDetailPage({
    super.key,
    required this.specialtyId,
    required this.specialtyName,
  });

  @override
  State<SpecialtyDetailPage> createState() => _SpecialtyDetailPageState();
}

class _SpecialtyDetailPageState extends State<SpecialtyDetailPage> {
  final Color deepBlue = const Color(0xFF0D47A1);
  final Color lightBlue = const Color(0xFF2196F3);
  final Color titleColor = const Color(0xFF1A1A1A);
  final Color bodyColor = const Color(0xFF424242);

  @override
  void initState() {
    super.initState();
    // 🎯 Gọi data ngay khi vào trang
    context.read<SpecialtyDetailBloc>().add(
      SpecialtyDetailStarted(widget.specialtyId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Nền trang trắng cho sạch sẽ
      body: BlocBuilder<SpecialtyDetailBloc, SpecialtyDetailState>(
        builder: (context, state) {
          if (state.status == SpecialtyDetailStatus.loading) {
            return Center(
              child: CircularProgressIndicator(
                color: lightBlue,
                strokeWidth: 3,
              ),
            );
          }

          if (state.status == SpecialtyDetailStatus.success &&
              state.specialty != null) {
            return _buildContent(state.specialty!);
          }

          if (state.status == SpecialtyDetailStatus.failure) {
            return _buildErrorState(state.errorMessage);
          }

          return const SizedBox();
        },
      ),
    );
  }

  Widget _buildContent(SpecialtyEntity specialty) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        // 🖼️ HEADER: ẢNH CHUYÊN KHOA COLLAPSING
        SliverAppBar(
          expandedHeight: 250.0,
          pinned: true,
          elevation: 0,
          backgroundColor: deepBlue,
          leading: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const BackButton(color: Colors.white),
          ),
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: const EdgeInsetsDirectional.only(
              start: 50,
              bottom: 16,
            ),
            title: Text(
              widget.specialtyName,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
                shadows: [Shadow(blurRadius: 8, color: Colors.black45)],
              ),
            ),
            background: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  specialty.image,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) =>
                      Container(color: Colors.grey.shade200),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.2),
                        Colors.black.withOpacity(0.8),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        // 📝 BODY: NỘI DUNG HTML LUXURY RENDER
        SliverToBoxAdapter(
          child: Container(
            transform: Matrix4.translationValues(0, -30, 0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            padding: const EdgeInsets.fromLTRB(20, 25, 20, 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Thanh chỉ mục nhỏ xinh
                Center(
                  child: Container(
                    width: 40,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 25),

                // 🎯 PHẦN RENDER HTML TỪ DATABASE
                HtmlWidget(
                  specialty.contentHtml.isNotEmpty
                      ? specialty.contentHtml
                      : "<p>Nội dung đang được cập nhật...</p>",

                  // 1. Cấu hình Font tổng thể
                  textStyle: TextStyle(
                    fontSize: 16,
                    height: 1.7,
                    color: bodyColor,
                    letterSpacing: 0.2,
                    fontFamily: 'Roboto',
                  ),

                  // 2. Custom Styles cho từng thẻ HTML (ĐÂY LÀ XOẸT STYLE!)
                  customStylesBuilder: (element) {
                    if (element.localName == 'h3' ||
                        element.localName == 'h2') {
                      return {
                        'color': '#0D47A1', // Deep Blue cho tiêu đề
                        'font-weight': 'bold',
                        'font-size': '19px',
                        'margin-top': '24px',
                        'margin-bottom': '12px',
                        'border-left':
                            '4px solid #2196F3', // Thanh vạch xanh sang trọng
                        'padding-left': '12px',
                        'line-height': '1.3',
                      };
                    }
                    if (element.localName == 'p') {
                      return {
                        'margin-bottom': '14px',
                        'text-align': 'justify', // Căn đều 2 bên
                      };
                    }
                    if (element.localName == 'li') {
                      return {'margin-bottom': '8px', 'line-height': '1.6'};
                    }
                    if (element.localName == 'strong' ||
                        element.localName == 'b') {
                      return {'color': '#1A1A1A', 'font-weight': 'bold'};
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 40),
                const Center(
                  child: Text(
                    "--- Hết nội dung chuyên khoa ---",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildErrorState(String? error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline_rounded,
            color: Colors.red.shade300,
            size: 50,
          ),
          const SizedBox(height: 16),
          Text(
            error ?? "Lỗi tải dữ liệu",
            style: const TextStyle(color: Colors.grey),
          ),
          TextButton(
            onPressed: () => context.read<SpecialtyDetailBloc>().add(
              SpecialtyDetailStarted(widget.specialtyId),
            ),
            child: Text("Thử lại", style: TextStyle(color: lightBlue)),
          ),
        ],
      ),
    );
  }
}
