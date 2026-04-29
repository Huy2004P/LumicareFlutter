import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/feature/booking/data/models/booking_confirm_params.dart';
import 'package:lumi_care/feature/payment/application/constants/route_constants.dart';
import '../bloc/booking_confirm_bloc.dart';
import '../widgets/confirm_header.dart';
import '../widgets/confirm_section.dart';
import '../widgets/confirm_info_tile.dart';
import '../widgets/confirm_payment_selector.dart';
import '../widgets/confirm_photo_list.dart';
import '../widgets/confirm_price_box.dart';
import '../widgets/confirm_action_button.dart';

class BookingConfirmPage extends StatefulWidget {
  final BookingConfirmParams params;
  const BookingConfirmPage({super.key, required this.params});

  @override
  State<BookingConfirmPage> createState() => _BookingConfirmPageState();
}

class _BookingConfirmPageState extends State<BookingConfirmPage> {
  late String _selectedPaymentMethod;

  @override
  void initState() {
    super.initState();
    _selectedPaymentMethod =
        widget.params.rawPayload['payment_method'] ?? 'PAY1';
  }

  String _generateTransactionId(String method) {
    final prefix = method == 'PAY1' ? "DIR" : "TRF";
    return "LUMICARE_${prefix}_${DateTime.now().millisecondsSinceEpoch}";
  }

  void _onHandleConfirm() {
    final Map<String, dynamic> finalPayload = Map.from(
      widget.params.rawPayload,
    );
    finalPayload['payment_method'] = _selectedPaymentMethod;

    final String txId = _generateTransactionId(_selectedPaymentMethod);
    finalPayload['transaction_id'] = txId;

    if (widget.params.timeDisplay.contains("(Yêu cầu)")) {
      finalPayload["time_type"] = "TIME_CUSTOM";
      finalPayload["reason"] =
          "${widget.params.timeDisplay} | ${finalPayload["reason"]}";
    }

    if (_selectedPaymentMethod == 'PAY1') {
      context.read<BookingConfirmBloc>().add(
        ConfirmBookingSubmitted(
          payload: finalPayload,
          photos: widget.params.photos,
        ),
      );
    } else {
      context.push(
        PaymentPath.checkoutScreen,
        extra: {
          'booking_data': finalPayload,
          'photos': widget.params.photos,
          'total_price': widget.params.totalPrice,
          'payment_method': _selectedPaymentMethod,
          'transaction_id': txId,
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BookingConfirmBloc, BookingConfirmState>(
      listener: (context, state) {
        if (state.status == BookingConfirmStatus.success &&
            _selectedPaymentMethod == 'PAY1') {
          _showSuccess(context);
        }
        if (state.status == BookingConfirmStatus.failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessage ?? "Lỗi hệ thống!")),
          );
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "XÁC NHẬN",
            style: TextStyle(
              color: Color(0xFF191C1F),
              fontWeight: FontWeight.w700,
              fontSize: 16,
              letterSpacing: 1.2,
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
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const ConfirmHeader(),
                  const SizedBox(height: 32),
                  ConfirmSection(
                    title: "THÔNG TIN HẸN KHÁM",
                    child: Column(
                      children: [
                        ConfirmInfoTile(
                          icon: Icons.person_pin_rounded,
                          label: "Chuyên gia",
                          value: widget.params.doctor.fullName,
                        ),
                        ConfirmInfoTile(
                          icon: Icons.calendar_today_rounded,
                          label: "Thời gian",
                          value:
                              "${widget.params.timeDisplay} - ${widget.params.dateDisplay}",
                        ),
                        ConfirmInfoTile(
                          icon: Icons.location_on_rounded,
                          label: "Địa điểm",
                          value: widget.params.location.addressDetail,
                        ),
                      ],
                    ),
                  ),
                  ConfirmSection(
                    title: "PHƯƠNG THỨC THANH TOÁN",
                    child: ConfirmPaymentSelector(
                      selectedMethod: _selectedPaymentMethod,
                      onChanged: (val) =>
                          setState(() => _selectedPaymentMethod = val),
                    ),
                  ),
                  if (widget.params.photos.isNotEmpty)
                    ConfirmSection(
                      title: "HÌNH ẢNH ĐÍNH KÈM",
                      child: ConfirmPhotoList(photos: widget.params.photos),
                    ),
                  const SizedBox(height: 16),
                  ConfirmPriceBox(totalPrice: widget.params.totalPrice),
                  const SizedBox(height: 120),
                ],
              ),
            ),
            if (context.watch<BookingConfirmBloc>().state.status ==
                BookingConfirmStatus.loading)
              Container(
                color: Colors.white60,
                child: const Center(
                  child: CircularProgressIndicator(color: Color(0xFF0075FF)),
                ),
              ),
          ],
        ),
        bottomSheet: ConfirmActionButton(onTap: _onHandleConfirm),
      ),
    );
  }

  void _showSuccess(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        title: const Icon(
          Icons.check_circle_rounded,
          color: Colors.green,
          size: 64,
        ),
        content: const Text(
          "Lịch hẹn đã được xác nhận thành công!",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).popUntil((r) => r.isFirst),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0075FF),
                shape: const StadiumBorder(),
              ),
              child: const Text(
                "VỀ TRANG CHỦ",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
