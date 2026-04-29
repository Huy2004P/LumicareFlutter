import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lumi_care/core/di/injection.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import 'package:lumi_care/feature/auth/data/datasources/auth_local_datasource.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

import '../bloc/payment_checkout_bloc.dart';
import '../bloc/payment_checkout_event.dart';
import '../bloc/payment_checkout_state.dart';
import '../../../../application/constants/route_constants.dart';
import '../widgets/checkout_qr_card.dart';
import '../widgets/checkout_live_status.dart';
import '../widgets/checkout_action_button.dart';

class PaymentCheckoutPage extends StatefulWidget {
  final BookingItemEntity booking;
  final Map<String, dynamic> payload;
  final List<XFile> photos;
  final String transactionId;

  const PaymentCheckoutPage({
    super.key,
    required this.booking,
    required this.payload,
    required this.photos,
    required this.transactionId,
  });

  @override
  State<PaymentCheckoutPage> createState() => _PaymentCheckoutPageState();
}

class _PaymentCheckoutPageState extends State<PaymentCheckoutPage> {
  late IO.Socket socket;
  bool _canNavigate = false;

  @override
  void initState() {
    super.initState();
    _initSocket();

    // Khởi tạo lấy hướng dẫn thanh toán (QR)
    context.read<PaymentCheckoutBloc>().add(
      PaymentCheckoutInstructionFetched(
        bookingId: widget.booking.id,
        method: widget.booking.paymentMethod,
        totalPrice: widget.booking.price,
      ),
    );
  }

  void _initSocket() {
    try {
      final localDataSource = getIt<AuthLocalDataSource>();
      final user = localDataSource.getUser();
      final String currentUserId = (user?.id ?? 0).toString();

      if (currentUserId == "0") return;

      socket = IO.io('http://10.0.2.2:3001', <String, dynamic>{
        'transports': ['websocket'],
        'autoConnect': false,
      });

      socket.connect();

      socket.onConnect((_) {
        debugPrint("⚡ Socket Connected: $currentUserId");
        socket.emit('register', currentUserId);
      });

      socket.on('PAYMENT_SUCCESS_EVENT', (data) {
        debugPrint("💰 Nhận tín hiệu tiền về: $data");
        if (mounted) {
          context.read<PaymentCheckoutBloc>().add(
            PaymentCheckoutStatusUpdated(
              status: PaymentCheckoutStatus.confirmed,
            ),
          );
        }
      });
    } catch (e) {
      debugPrint("Socket Error: $e");
    }
  }

  @override
  void dispose() {
    socket.dispose();
    super.dispose();
  }

  void _handleFinalConfirmation() {
    setState(() => _canNavigate = true);

    final Map<String, dynamic> finalPayload = Map<String, dynamic>.from(
      widget.payload,
    );
    // 🎯 Đảm bảo gửi PAY1 xuống Backend theo yêu cầu của ông
    finalPayload['payment_method'] = 'PAY1';

    context.read<PaymentCheckoutBloc>().add(
      PaymentCheckoutConfirmSubmitted(
        payload: finalPayload,
        photos: widget.photos,
        transactionId: widget.transactionId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "THANH TOÁN",
          style: TextStyle(
            color: Color(0xFF191C1F),
            fontWeight: FontWeight.w800,
            fontSize: 14,
            letterSpacing: 2.0,
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
      body: BlocConsumer<PaymentCheckoutBloc, PaymentCheckoutState>(
        listenWhen: (prev, curr) => prev.status != curr.status,
        listener: (context, state) {
          if (state.status == PaymentCheckoutStatus.success && _canNavigate) {
            context.pushReplacement(
              PaymentPath.paymentStatusScreen,
              extra: true,
            );
          }
          if (state.status == PaymentCheckoutStatus.failure) {
            setState(() => _canNavigate = false);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.errorMessage ?? "Lỗi hệ thống")),
            );
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      const SizedBox(height: 24),
                      CheckoutQRCard(instruction: state.instruction),
                      const SizedBox(height: 48),
                      CheckoutLiveStatus(status: state.status),
                      const SizedBox(height: 24),
                      const Text(
                        "Vui lòng không thoát ứng dụng\ntrong lúc giao dịch đang thực hiện",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF94A3B8),
                          height: 1.6,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 40),
                child: CheckoutActionButton(
                  status: state.status,
                  onPressed: _handleFinalConfirmation,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
