import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumi_care/feature/booking/presentation/ui/feedback/bloc/feedback_bloc.dart';
import 'package:lumi_care/feature/booking/presentation/ui/feedback/bloc/feedback_event.dart';
import 'package:lumi_care/feature/booking/presentation/ui/feedback/bloc/feedback_state.dart';

class FeedbackPage extends StatefulWidget {
  final int bookingId;
  final int patientId;
  final int doctorId;
  final int clinicId;
  final int serviceId;

  const FeedbackPage({
    super.key,
    required this.bookingId,
    required this.patientId,
    required this.doctorId,
    required this.clinicId,
    required this.serviceId,
  });

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  double ratingDoctor = 5;
  double ratingClinic = 5;
  double ratingService = 5;
  double ratingBooking = 5;
  final TextEditingController _commentController = TextEditingController();

  // --- 🎨 HỆ MÀU FINTECH ---
  final Color primaryBlue = const Color(0xFF0075FF);
  final Color textDark = const Color(0xFF191C1F);
  final Color secondaryGrey = const Color(0xFF8D969E);
  final Color bgInput = const Color(0xFFF4F7F9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "ĐÁNH GIÁ",
          style: TextStyle(
            color: textDark,
            fontWeight: FontWeight.w800,
            fontSize: 14,
            letterSpacing: 1.5,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: textDark,
            size: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: BlocListener<FeedbackBloc, FeedbackState>(
        listener: (context, state) {
          if (state is FeedbackSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  "Cảm ơn bạn đã đánh giá!",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                backgroundColor: Colors.green,
                behavior: SnackBarBehavior.floating,
              ),
            );
            Navigator.pop(context, true);
          } else if (state is FeedbackFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.redAccent,
                behavior: SnackBarBehavior.floating,
              ),
            );
          }
        },
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    Text(
                      "Trải nghiệm của bạn\nthế nào? ✨",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: textDark,
                        height: 1.2,
                        letterSpacing: -1,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Ý kiến của bạn giúp Lumicare nâng cao chất lượng phục vụ mỗi ngày.",
                      style: TextStyle(
                        fontSize: 15,
                        color: secondaryGrey,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 40),

                    // --- CÁC MỤC ĐÁNH GIÁ ---
                    _buildRatingRow(
                      "Bác sĩ điều trị",
                      ratingDoctor,
                      (val) => setState(() => ratingDoctor = val),
                    ),
                    _buildRatingRow(
                      "Cơ sở vật chất",
                      ratingClinic,
                      (val) => setState(() => ratingClinic = val),
                    ),
                    _buildRatingRow(
                      "Chất lượng dịch vụ",
                      ratingService,
                      (val) => setState(() => ratingService = val),
                    ),
                    _buildRatingRow(
                      "Trải nghiệm ứng dụng",
                      ratingBooking,
                      (val) => setState(() => ratingBooking = val),
                    ),

                    const SizedBox(height: 32),

                    // --- Ô NHẬP NHẬN XÉT ---
                    Text(
                      "NHẬN XÉT CHI TIẾT",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w800,
                        color: secondaryGrey,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      controller: _commentController,
                      maxLines: 4,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                        hintText: "Chia sẻ thêm về trải nghiệm của bạn...",
                        hintStyle: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w400,
                        ),
                        filled: true,
                        fillColor: bgInput,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.all(20),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),

            // --- NÚT GỬI (STICKY BOTTOM) ---
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 40),
              child: _buildSubmitButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRatingRow(
    String title,
    double currentRating,
    Function(double) onRatingChanged,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: textDark,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: List.generate(5, (index) {
              bool isSelected = index < currentRating;
              return GestureDetector(
                onTap: () => onRatingChanged(index + 1.0),
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Icon(
                    isSelected
                        ? Icons.star_rounded
                        : Icons.star_outline_rounded,
                    color: isSelected ? Colors.amber : Colors.grey.shade300,
                    size: 36,
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildSubmitButton() {
    return BlocBuilder<FeedbackBloc, FeedbackState>(
      builder: (context, state) {
        bool isLoading = state is FeedbackLoading;
        return Container(
          width: double.infinity,
          height: 58,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: primaryBlue,
            boxShadow: [
              BoxShadow(
                color: primaryBlue.withOpacity(0.25),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: isLoading ? null : _submitFeedback,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            child: isLoading
                ? const SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    ),
                  )
                : const Text(
                    "GỬI ĐÁNH GIÁ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      letterSpacing: 1,
                    ),
                  ),
          ),
        );
      },
    );
  }

  void _submitFeedback() {
    final payload = {
      'booking_id': widget.bookingId,
      'patient_id': widget.patientId,
      'doctor_id': widget.doctorId,
      'clinic_id': widget.clinicId,
      'service_id': widget.serviceId,
      'rating_doctor': ratingDoctor.toInt(),
      'rating_clinic': ratingClinic.toInt(),
      'rating_service': ratingService.toInt(),
      'rating_booking': ratingBooking.toInt(),
      'comment': _commentController.text.trim(),
    };
    context.read<FeedbackBloc>().add(SendFeedbackEvent(payload));
  }
}
