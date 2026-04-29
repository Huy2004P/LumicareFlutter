import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import 'package:lumi_care/feature/payment/application/constants/route_constants.dart';

import '../ui/payment_checkout_page/pages/index.dart';
import '../ui/payment_status_page/pages/index.dart';
import '../ui/payment_checkout_page/bloc/payment_checkout_bloc.dart';
import '../ui/payment_status_page/bloc/payment_status_bloc.dart';
import '../ui/payment_status_page/bloc/payment_status_event.dart';

class PaymentRouter {
  static List<RouteBase> routeStructure(GlobalKey<NavigatorState> key) => [];

  static List<RouteBase> routeStructureInRoot(GlobalKey<NavigatorState> key) =>
      [
        GoRoute(
          path: PaymentPath.checkoutScreen,
          name: PaymentRoutes.checkoutScreen,
          parentNavigatorKey: key,
          pageBuilder: (context, state) {
            final Map<String, dynamic> extraData =
                state.extra as Map<String, dynamic>;

            final bookingPayload =
                extraData['booking_data'] as Map<String, dynamic>;
            final photos = extraData['photos'] as List<XFile>;
            final totalPrice = extraData['total_price'] as double;

            // 🎯 LẤY CÁI MÃ TRANSACTION ID TỪ EXTRA Ở ĐÂY
            final transactionId = extraData['transaction_id'] as String? ?? "";

            // Tạo Entity tạm để hiển thị UI
            final tempBooking = BookingItemEntity(
              id: 0,
              price: totalPrice,
              paymentMethod: extraData['payment_method'] ?? 'PAY3',
              doctorName: "Thanh toán dịch vụ",
              status: "PENDING",
              date: "",
              timeDisplay: "",
              patientName: "",
              serviceName: "",
              address: "",
              cancelReason: "",
              reason: "",
              paymentStatus: 0,
              patientId: 0,
              doctorId: 0,
              clinicId: 0,
              serviceId: 0,
            );

            return NoTransitionPage(
              key: state.pageKey,
              child: BlocProvider<PaymentCheckoutBloc>(
                create: (context) => GetIt.I<PaymentCheckoutBloc>(),
                child: PaymentCheckoutPage(
                  booking: tempBooking,
                  payload: bookingPayload,
                  photos: photos,
                  transactionId: transactionId,
                ),
              ),
            );
          },
        ),

        GoRoute(
          path: PaymentPath.paymentStatusScreen,
          name: PaymentRoutes.paymentStatusScreen,
          parentNavigatorKey: key,
          pageBuilder: (context, state) {
            final isSuccess = state.extra as bool? ?? false;
            return NoTransitionPage(
              key: state.pageKey,
              child: BlocProvider<PaymentStatusBloc>(
                create: (context) =>
                    GetIt.I<PaymentStatusBloc>()
                      ..add(PaymentStatusInitialized(isSuccess: isSuccess)),
                child: PaymentStatusPage(isSuccess: isSuccess),
              ),
            );
          },
        ),
      ];
}
