import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import 'package:lumi_care/core/network/domain/entities/entities.dart';
import 'package:lumi_care/feature/auth/data/datasources/auth_local_datasource.dart';
import 'package:lumi_care/feature/booking/application/constants/route_constants.dart';
import 'package:lumi_care/feature/booking/data/models/booking_confirm_params.dart';
import 'package:lumi_care/feature/booking/presentation/ui/booking/bloc/booking_bloc.dart';
import 'package:lumi_care/feature/doctor/application/constants/route_constants.dart';
import 'package:lumi_care/feature/doctor/domain/use_cases/doctor_usecases.dart';
import 'package:lumi_care/feature/location/application/constants/route_constants.dart';
import 'package:lumi_care/feature/location/domain/use_cases/location_usecases.dart';
import 'package:lumi_care/feature/patient/application/constants/route_constants.dart';
import 'package:lumi_care/feature/services/domain/use_cases/service_usecases.dart';

import '../widgets/booking_patient_picker.dart';
import '../widgets/booking_info_list.dart';
import '../widgets/booking_doctor_card.dart';
import '../widgets/booking_address_card.dart';
import '../widgets/booking_photo_picker.dart';
import '../widgets/booking_bottom_bar.dart';

class BookingPage extends StatefulWidget {
  final int? serviceId;

  const BookingPage({super.key, this.serviceId});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  // ===========================================================================
  // CONSTANTS & COLORS (STYLE LUXURY SKY BLUE)
  // ===========================================================================
  static const Color _skyBlue = Color(0xFF0075FF);
  static const Color _textDark = Color(0xFF191C1F);
  static const String _defaultServiceName = "Khám Trực Tiếp";

  // ===========================================================================
  // CONTROLLERS & STATE VARIABLES
  // ===========================================================================
  final TextEditingController _reasonController = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  // Selection state
  List<DoctorEntity> _selectedDoctorsList = [];
  List<ServiceItemEntity> _availableServices = [];
  PatientProfileEntity? _selectedPatient;
  List<LocationEntity> _userLocations = [];
  LocationEntity? _selectedLocation;
  List<XFile> _selectedPhotos = [];

  // Service & pricing state
  int? _selectedServiceId;
  String _selectedServiceName = _defaultServiceName;
  int? _currentSpecialtyId;
  double _doctorPrice = 0.0;
  double _servicePrice = 0.0;
  double _currentTotalPrice = 0.0;

  // Date & time state
  String _selectedDateDisplay = "Chọn ngày khám";
  String _selectedDateValue = "";
  String _selectedTime = "Chọn khung giờ";
  String _selectedTimeType = "";

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.serviceId != null) _loadDataFromService(widget.serviceId!);
      _fetchUserLocations();
    });
  }

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }

  // ===========================================================================
  // DATA LOADING METHODS
  // ===========================================================================
  Future<void> _loadDataFromService(int serviceId) async {
    try {
      final serviceDetail = await GetIt.I<ServiceUsecases>().getServiceDetail(
        serviceId,
      );

      setState(() {
        _currentSpecialtyId = serviceDetail.service.specialtyId;
        _selectedServiceId = serviceId;
        _selectedServiceName = serviceDetail.service.name;
        _servicePrice = serviceDetail.service.price;
        _updatePrice();
      });

      if (serviceDetail.doctors.isNotEmpty) {
        final doctor = serviceDetail.doctors.first as DoctorEntity;
        setState(() {
          _selectedDoctorsList = [doctor];
          _doctorPrice = doctor.price;
          _updatePrice();
        });
        _fetchDoctorServices(doctor.id);
      }
    } catch (e) {
      debugPrint("Error loading service: $e");
    }
  }

  Future<void> _fetchUserLocations() async {
    final user = GetIt.I<AuthLocalDataSource>().getUser();
    if (user == null) return;

    try {
      final locationData = await GetIt.I<LocationUsecases>()
          .getPatientLocations(user.id);

      setState(() {
        _userLocations = locationData.locations;
        if (_userLocations.isNotEmpty) {
          _selectedLocation = _userLocations.firstWhere(
            (location) => location.isDefault,
            orElse: () => _userLocations.first,
          );
        }
      });
    } catch (e) {
      debugPrint("Error fetching locations: $e");
    }
  }

  Future<void> _fetchDoctorServices(int doctorId) async {
    try {
      final doctorServices = await GetIt.I<DoctorUsecases>().getDoctorServices(
        doctorId,
      );
      setState(
        () => _availableServices = doctorServices.serviceDetail?.services ?? [],
      );
    } catch (e) {
      debugPrint("Error fetching doctor services: $e");
    }
  }

  void _updatePrice() {
    setState(() => _currentTotalPrice = _doctorPrice + _servicePrice);
  }

  // ===========================================================================
  // DATE & TIME PICKING METHODS
  // ===========================================================================
  Future<void> _onPickDate() async {
    if (_selectedDoctorsList.isEmpty) {
      _showSnackBar("Vui lòng chọn bác sĩ trước!", Colors.orange);
      return;
    }

    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 30)),
      builder: (context, child) => Theme(
        data: Theme.of(
          context,
        ).copyWith(colorScheme: const ColorScheme.light(primary: _skyBlue)),
        child: child!,
      ),
    );

    if (pickedDate != null) {
      final dateValue = DateFormat('yyyy-MM-dd').format(pickedDate);
      final dateDisplay = DateFormat('dd/MM/yyyy').format(pickedDate);

      setState(() {
        _selectedDateValue = dateValue;
        _selectedDateDisplay = dateDisplay;
        _selectedTime = "Chọn khung giờ";
        _selectedTimeType = "";
      });

      context.read<BookingBloc>().add(
        BookingDateChanged(
          doctorId: _selectedDoctorsList.first.id,
          date: dateValue,
        ),
      );
    }
  }

  Future<void> _pickManualTimeRange() async {
    // 1. Chọn giờ bắt đầu
    final TimeOfDay? start = await showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 8, minute: 0),
      helpText: "CHỌN GIỜ BẮT ĐẦU",
      builder: (context, child) => _buildPickerTheme(child!),
    );

    if (start == null) return;

    if (start.hour < 7 || start.hour >= 20) {
      _showSnackBar(
        "Vui lòng chọn khung giờ từ 07:00 đến 20:00",
        Colors.orange,
      );
      return;
    }

    // 2. Chọn giờ kết thúc
    if (!mounted) return;
    final TimeOfDay? end = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: start.hour + 1, minute: start.minute),
      helpText: "CHỌN GIỜ KẾ THÚC",
      builder: (context, child) => _buildPickerTheme(child!),
    );

    if (end == null) return;

    // 3. Kiểm tra logic khoảng thời gian
    final double startDouble = start.hour + start.minute / 60.0;
    final double endDouble = end.hour + end.minute / 60.0;

    if (endDouble <= startDouble) {
      _showSnackBar("Giờ kết thúc phải sau giờ bắt đầu", Colors.redAccent);
      return;
    }

    // 4. Cập nhật dữ liệu với mã TIME_CUSTOM
    setState(() {
      final String startStr = _formatTimeOfDay(start);
      final String endStr = _formatTimeOfDay(end);
      _selectedTime = "$startStr - $endStr";
      _selectedTimeType = "TIME_CUSTOM"; // Mã nhận diện Backend
    });

    if (mounted) Navigator.pop(context);
  }

  void _showTimePicker() {
    if (_selectedDateValue.isEmpty) {
      _showSnackBar("Vui lòng chọn ngày khám trước!", Colors.orange);
      _onPickDate();
      return;
    }

    final bookingBloc = context.read<BookingBloc>();

    showDialog(
      context: context,
      builder: (context) => BlocProvider.value(
        value: bookingBloc,
        child: Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: BlocBuilder<BookingBloc, BookingState>(
            builder: (context, state) => Container(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "CHỌN GIỜ KHÁM",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.close_rounded),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  if (state is BookingLoading)
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 40),
                      child: CircularProgressIndicator(color: _skyBlue),
                    )
                  else ...[
                    if (state is BookingScheduleLoaded)
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height * 0.4,
                        ),
                        child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 2.2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                              ),
                          itemCount: state.schedules.length,
                          itemBuilder: (context, index) {
                            final schedule = state.schedules[index];
                            final isSelected =
                                _selectedTime == schedule.timeDisplay;

                            return InkWell(
                              onTap: schedule.isAvailable
                                  ? () {
                                      setState(() {
                                        _selectedTime = schedule.timeDisplay;
                                        _selectedTimeType = schedule.timeType;
                                      });
                                      Navigator.pop(context);
                                    }
                                  : null,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? _skyBlue
                                      : (schedule.isAvailable
                                            ? const Color(0xFFF4F7F9)
                                            : Colors.grey[100]),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  schedule.timeDisplay,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: isSelected
                                        ? Colors.white
                                        : (schedule.isAvailable
                                              ? _textDark
                                              : Colors.grey[400]),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    else if (state is BookingScheduleEmpty)
                      const Text(
                        "Bác sĩ không có lịch trực sẵn vào ngày này.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF8D969E),
                          fontSize: 13,
                          height: 1.5,
                        ),
                      ),

                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: _pickManualTimeRange,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _skyBlue,
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        child: const Text(
                          "TỰ CHỌN KHUNG GIỜ",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 13,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ===========================================================================
  // HELPERS
  // ===========================================================================
  String _formatTimeOfDay(TimeOfDay tod) {
    final now = DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, tod.hour, tod.minute);
    return DateFormat('HH:mm').format(dt);
  }

  Widget _buildPickerTheme(Widget child) {
    return Theme(
      data: Theme.of(context).copyWith(
        colorScheme: const ColorScheme.light(
          primary: _skyBlue,
          onSurface: _textDark,
        ),
      ),
      child: child,
    );
  }

  void _showSnackBar(String msg, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg, style: const TextStyle(fontWeight: FontWeight.w600)),
        backgroundColor: color,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  // ===========================================================================
  // SELECTION METHODS
  // ===========================================================================
  Future<void> _onPickPatient() async {
    final result = await context.pushNamed(
      PatientRoutes.patientListScreen,
      extra: GetIt.I<AuthLocalDataSource>().getUser()?.id ?? 0,
    );

    if (result != null && result is PatientProfileEntity) {
      setState(() => _selectedPatient = result);
    }
  }

  Future<void> _onPickDoctor() async {
    final result = await context.pushNamed(
      DoctorRoutes.doctorListScreen,
      extra: _currentSpecialtyId,
    );

    if (result != null && result is DoctorEntity) {
      setState(() {
        _selectedDoctorsList = [result];
        _doctorPrice = result.price;
        _currentSpecialtyId = result.specialtyId;
        _selectedDateDisplay = "Chọn ngày khám";
        _selectedTime = "Chọn khung giờ";
        _updatePrice();
      });

      _fetchDoctorServices(result.id);
    }
  }

  void _showServicePicker(BuildContext context) {
    if (_selectedDoctorsList.isEmpty) return;

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "GÓI KHÁM TẠI NHÀ",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
            ),
            const SizedBox(height: 20),
            ListTile(
              onTap: () {
                setState(() {
                  _selectedServiceId = null;
                  _selectedServiceName = _defaultServiceName;
                  _servicePrice = 0;
                  _updatePrice();
                });
                Navigator.pop(context);
              },
              leading: const Icon(Icons.medical_services, color: _skyBlue),
              title: const Text(
                _defaultServiceName,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _availableServices.length,
                itemBuilder: (context, index) => ListTile(
                  onTap: () {
                    setState(() {
                      _selectedServiceId = _availableServices[index].id;
                      _selectedServiceName = _availableServices[index].name;
                      _servicePrice = _availableServices[index].price;
                      _updatePrice();
                    });
                    Navigator.pop(context);
                  },
                  title: Text(
                    _availableServices[index].name,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showLocationPicker() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "CHỌN ĐỊA CHỈ KHÁM",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 15,
                      letterSpacing: 0.5,
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      final user = GetIt.I<AuthLocalDataSource>().getUser();
                      final userId = user?.id ?? 0;
                      Navigator.pop(context);
                      context.pushNamed(
                        LocationRoutes.locationListScreen,
                        extra: userId,
                      );
                    },
                    icon: const Icon(
                      Icons.add_circle_outline_rounded,
                      size: 18,
                    ),
                    label: const Text(
                      "QUẢN LÝ",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 12,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      foregroundColor: const Color(0xFF0075FF),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            if (_userLocations.isEmpty)
              Padding(
                padding: const EdgeInsets.all(40),
                child: Text(
                  "Bạn chưa có địa chỉ nào.",
                  style: TextStyle(color: Colors.grey[500]),
                ),
              )
            else
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.4,
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: _userLocations.length,
                  separatorBuilder: (_, __) =>
                      const Divider(height: 1, color: Color(0xFFF4F7F9)),
                  itemBuilder: (context, index) {
                    final loc = _userLocations[index];
                    final isSelected = _selectedLocation?.id == loc.id;

                    return ListTile(
                      onTap: () {
                        setState(() => _selectedLocation = loc);
                        Navigator.pop(context);
                      },
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 8,
                      ),
                      leading: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? _skyBlue.withOpacity(0.1)
                              : Color(0xFFF4F7F9),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.location_on_rounded,
                          size: 20,
                          color: isSelected ? _skyBlue : Colors.grey[400],
                        ),
                      ),
                      title: Text(
                        loc.addressDetail,
                        style: TextStyle(
                          fontWeight: isSelected
                              ? FontWeight.w700
                              : FontWeight.w600,
                          fontSize: 14,
                          color: isSelected ? _skyBlue : _textDark,
                          height: 1.4,
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          loc.label.toUpperCase(),
                          style: TextStyle(
                            fontSize: 10,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.bold,
                            color: isSelected
                                ? _skyBlue.withOpacity(0.7)
                                : Colors.grey[500],
                          ),
                        ),
                      ),
                      trailing: isSelected
                          ? const Icon(
                              Icons.check_circle_rounded,
                              color: _skyBlue,
                            )
                          : null,
                    );
                  },
                ),
              ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Future<void> _showImageSourceSheet() async {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      builder: (context) => Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "CHỌN NGUỒN ẢNH",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSourceItem(
                  icon: Icons.camera_alt_rounded,
                  label: "Máy ảnh",
                  onTap: () => _pickImage(ImageSource.camera),
                ),
                _buildSourceItem(
                  icon: Icons.photo_library_rounded,
                  label: "Thư viện",
                  onTap: () => _pickImage(ImageSource.gallery),
                ),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildSourceItem({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        onTap();
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFF4F7F9),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(icon, color: _skyBlue, size: 28),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
          ),
        ],
      ),
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    try {
      if (source == ImageSource.gallery) {
        final images = await _picker.pickMultiImage();
        if (images.isNotEmpty) setState(() => _selectedPhotos.addAll(images));
      } else {
        final image = await _picker.pickImage(source: source);
        if (image != null) setState(() => _selectedPhotos.add(image));
      }
    } catch (e) {
      debugPrint("Error picking image: $e");
    }
  }

  void _handleConfirm() {
    if (_selectedDoctorsList.isEmpty ||
        _selectedPatient == null ||
        _selectedLocation == null ||
        _selectedDateValue.isEmpty ||
        _selectedTimeType.isEmpty) {
      _showSnackBar("Vui lòng điền đủ thông tin!", Colors.orange);
      return;
    }

    final bookingParams = BookingConfirmParams(
      rawPayload: {
        "doctor_id": _selectedDoctorsList.first.id,
        "patient_id": GetIt.I<AuthLocalDataSource>().getUser()?.id,
        "profile_id": _selectedPatient!.id,
        "date": _selectedDateValue,
        "time_type": _selectedTimeType,
        "reason": _reasonController.text.trim(),
        "location_id": _selectedLocation!.id,
        "service_id": _selectedServiceId ?? 0,
        "photos": _selectedPhotos.map((photo) => photo.name).toList(),
      },
      doctor: _selectedDoctorsList.first,
      patient: _selectedPatient!,
      location: _selectedLocation!,
      serviceName: _selectedServiceName,
      photos: _selectedPhotos,
      totalPrice: _currentTotalPrice,
      dateDisplay: _selectedDateDisplay,
      timeDisplay: _selectedTime,
    );

    context.pushNamed(BookingRoutes.bookingConfirmScreen, extra: bookingParams);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: _textDark,
            size: 20,
          ),
        ),
        title: const Text(
          "ĐẶT LỊCH KHÁM",
          style: TextStyle(
            color: _textDark,
            fontWeight: FontWeight.w900,
            fontSize: 16,
            letterSpacing: 1,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: 4,
                  height: 18,
                  decoration: BoxDecoration(
                    color: _skyBlue,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "CHỌN HỒ SƠ NGƯỜI BỆNH",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 14,
                    letterSpacing: 0.8,
                    color: _textDark,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // 1. CHỌN HỒ SƠ BỆNH NHÂN
            BookingPatientPicker(
              patient: _selectedPatient,
              onTap: _onPickPatient,
            ),

            const SizedBox(height: 12),
            // CHỌN CHUYÊN GIA
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 4,
                      height: 18,
                      decoration: BoxDecoration(
                        color: _skyBlue,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "CHUYÊN GIA PHỤ TRÁCH",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 14,
                        letterSpacing: 0.8,
                        color: _textDark,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                if (_selectedDoctorsList.isEmpty)
                  // Giao diện nút bấm khi chưa chọn bác sĩ (Luxury Sky Blue)
                  InkWell(
                    onTap: _onPickDoctor,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: _skyBlue.withOpacity(0.2),
                          width: 1.5,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: _skyBlue.withOpacity(0.05),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: _skyBlue.withOpacity(0.1),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.person_search_rounded,
                              color: _skyBlue,
                              size: 24,
                            ),
                          ),
                          const SizedBox(width: 16),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Chọn chuyên gia ngay",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 15,
                                    color: _textDark,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  "Để hệ thống hiển thị lịch trực sẵn có",
                                  style: TextStyle(
                                    color: Color(0xFF8D969E),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.add_circle_outline_rounded,
                            color: _skyBlue,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  )
                else
                  // Widget hiển thị bác sĩ khi đã được chọn
                  BookingDoctorCard(
                    doctor: _selectedDoctorsList.first,
                    onTap: _onPickDoctor,
                  ),

                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F7F9), // Nền Parchment nhẹ nhàng
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: _skyBlue.withOpacity(0.1)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.auto_awesome_rounded,
                            color: _skyBlue,
                            size: 20,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "QUY TRÌNH THIẾT LẬP LỊCH HẸN",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w900,
                              color: _skyBlue.withOpacity(0.8),
                              letterSpacing: 1.2,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),

                      // BƯỚC 1: CHỌN BÁC SĨ (ĐANG THỰC HIỆN)
                      _buildStepItem(
                        step: "1",
                        title: "Lựa chọn Chuyên gia",
                        desc:
                            "Mỗi bác sĩ tại LumiCare có chuyên môn và danh sách dịch vụ riêng biệt. Bạn cần chọn bác sĩ để hệ thống xác định phạm vi điều trị.",
                        isDone: _selectedDoctorsList.isNotEmpty,
                        isCurrent: _selectedDoctorsList.isEmpty,
                      ),

                      _buildStepDivider(),

                      // BƯỚC 2: MỞ KHÓA DỊCH VỤ & THỜI GIAN
                      _buildStepItem(
                        step: "2",
                        title: "Đồng bộ hóa Gói khám & Lịch trực",
                        desc:
                            "Sau khi có bác sĩ, mục 'Thông tin khám' bên dưới sẽ hiển thị chính xác các gói giá và khung giờ mà bác sĩ đó đang sẵn sàng tiếp nhận.",
                        isDone: false,
                        isCurrent: _selectedDoctorsList.isNotEmpty,
                      ),

                      const SizedBox(height: 16),

                      // DÒNG NHẮC NHỞ CHI TIẾT
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.info_outline_rounded,
                              size: 16,
                              color: Color(0xFF8D969E),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                "Giá tiền và khung giờ có thể thay đổi tùy theo vị trí và chuyên môn của bác sĩ bạn chọn.",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: const Color(0xFF8D969E),
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),
            Row(
              children: [
                Container(
                  width: 4,
                  height: 18,
                  decoration: BoxDecoration(
                    color: _skyBlue,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "THÔNG TIN LỊCH KHÁM",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 14,
                    letterSpacing: 0.8,
                    color: _textDark,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // 3. THÔNG TIN KHÁM (Dịch vụ, Ngày, Giờ)
            BookingInfoList(
              serviceName: _selectedServiceName,
              dateDisplay: _selectedDateDisplay,
              timeDisplay: _selectedTime,
              onServiceTap: () => _showServicePicker(context),
              onDateTap: _onPickDate,
              onTimeTap: _showTimePicker,
            ),

            const SizedBox(height: 12),
            Row(
              children: [
                Container(
                  width: 4,
                  height: 18,
                  decoration: BoxDecoration(
                    color: _skyBlue,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "CHỌN ĐỊA CHỈ KHÁM TẠI NHÀ VÀ MÔ TẢ BỆNH",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 14,
                    letterSpacing: 0.8,
                    color: _textDark,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // 4. ĐỊA CHỈ KHÁM
            BookingAddressCard(
              location: _selectedLocation,
              controller: _reasonController,
              onTap: _showLocationPicker,
            ),

            const SizedBox(height: 12),
            Row(
              children: [
                Container(
                  width: 4,
                  height: 18,
                  decoration: BoxDecoration(
                    color: _skyBlue,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "CHỌN ẢNH ĐỂ UPLOAD",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 14,
                    letterSpacing: 0.8,
                    color: _textDark,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // 5. CHỌN ẢNH
            BookingPhotoPicker(
              photos: _selectedPhotos,
              onAdd: _showImageSourceSheet,
              onRemove: (index) =>
                  setState(() => _selectedPhotos.removeAt(index)),
            ),

            const SizedBox(height: 140),
          ],
        ),
      ),
      bottomSheet: BookingBottomBar(
        totalPrice: _currentTotalPrice,
        onConfirm: _handleConfirm,
      ),
    );
  }

  Widget _buildStepItem({
    required String step,
    required String title,
    required String desc,
    required bool isDone,
    required bool isCurrent,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: isDone
                    ? Colors.green
                    : (isCurrent ? _skyBlue : Colors.white),
                shape: BoxShape.circle,
                border: Border.all(
                  color: isDone
                      ? Colors.green
                      : (isCurrent ? _skyBlue : const Color(0xFFC9C9CD)),
                ),
              ),
              child: Center(
                child: isDone
                    ? const Icon(Icons.check, size: 14, color: Colors.white)
                    : Text(
                        step,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: isCurrent
                              ? Colors.white
                              : const Color(0xFF8D969E),
                        ),
                      ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title.toUpperCase(),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w900,
                  color: isCurrent ? _textDark : const Color(0xFF8D969E),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                desc,
                style: TextStyle(
                  fontSize: 12,
                  color: isCurrent
                      ? const Color(0xFF4A4A4A)
                      : const Color(0xFF8D969E),
                  height: 1.4,
                  fontWeight: isCurrent ? FontWeight.w500 : FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStepDivider() {
    return Container(
      margin: const EdgeInsets.only(left: 11, top: 4, bottom: 4),
      width: 2,
      height: 20,
      color: const Color(0xFFE0E0E0),
    );
  }
}
