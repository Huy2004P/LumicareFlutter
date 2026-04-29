import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:lumi_care/core/network/domain/entities/entities.dart'
    show PatientProfileEntity;
import 'package:lumi_care/feature/patient/presentation/ui/CreatePatientProfilePage/bloc/patient_form_bloc.dart';
import 'package:lumi_care/feature/patient/presentation/ui/CreatePatientProfilePage/bloc/patient_form_event.dart';
import 'package:lumi_care/feature/patient/presentation/ui/CreatePatientProfilePage/bloc/patient_form_state.dart';

class PatientCreatePage extends StatefulWidget {
  final int userId;
  const PatientCreatePage({super.key, required this.userId});

  @override
  State<PatientCreatePage> createState() => _PatientCreatePageState();
}

class _PatientCreatePageState extends State<PatientCreatePage> {
  final _formKey = GlobalKey<FormState>();

  // 🎨 HỆ MÀU LUXURY FINTECH
  final Color primaryBlue = const Color(0xFF0075FF);
  final Color textDark = const Color(0xFF191C1F);
  final Color secondaryGrey = const Color(0xFF8D969E);
  final Color bgInput = const Color(0xFFF4F7F9);

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  String _selectedGender = 'Nam';
  String _selectedRelation = 'Bản thân';
  DateTime _selectedDate = DateTime(2000, 1, 1);

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: primaryBlue,
              onPrimary: Colors.white,
              onSurface: textDark,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(foregroundColor: primaryBlue),
            ),
          ),
          child: child!,
        );
      },
    ).then((pickedDate) {
      if (pickedDate == null) return;
      setState(() => _selectedDate = pickedDate);
    });
  }

  void _submitData() {
    if (_formKey.currentState!.validate()) {
      final newProfile = PatientProfileEntity(
        id: 0,
        userId: widget.userId,
        fullName: _nameController.text.trim(),
        birthday: DateFormat('yyyy-MM-dd').format(_selectedDate),
        gender: _selectedGender,
        phoneNumber: _phoneController.text.trim(),
        address: _addressController.text.trim(),
        relationship: _selectedRelation,
      );

      context.read<PatientFormBloc>().add(CreatePatientSubmitted(newProfile));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "TẠO HỒ SƠ",
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
      body: BlocListener<PatientFormBloc, PatientFormState>(
        listener: (context, state) {
          if (state.status == PatientFormStatus.success) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  "✅ Tạo hồ sơ thành công!",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                backgroundColor: Colors.green,
                behavior: SnackBarBehavior.floating,
              ),
            );
            Navigator.pop(context, true);
          } else if (state.status == PatientFormStatus.error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("❌ Lỗi: ${state.errorMessage}"),
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
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 24),
                      Text(
                        "Thông tin thành viên ✨",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          color: textDark,
                          letterSpacing: -0.5,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Vui lòng nhập chính xác thông tin để bác sĩ thuận tiện trong việc thăm khám.",
                        style: TextStyle(
                          fontSize: 15,
                          color: secondaryGrey,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 32),

                      _buildSectionLabel("HỌ TÊN & LIÊN HỆ"),
                      _buildTextField(
                        _nameController,
                        "Họ và tên",
                        Icons.person_rounded,
                        "Vui lòng nhập tên",
                      ),
                      const SizedBox(height: 16),
                      _buildTextField(
                        _phoneController,
                        "Số điện thoại",
                        Icons.phone_iphone_rounded,
                        "Vui lòng nhập SĐT",
                        keyboardType: TextInputType.phone,
                      ),

                      const SizedBox(height: 32),
                      _buildSectionLabel("CHI TIẾT NHÂN KHẨU"),
                      _buildDatePickerField(),
                      const SizedBox(height: 16),
                      _buildDropdownField(
                        "Giới tính",
                        Icons.wc_rounded,
                        ['Nam', 'Nữ'],
                        _selectedGender,
                        (val) => setState(() => _selectedGender = val!),
                      ),

                      const SizedBox(height: 32),
                      _buildSectionLabel("MỐI QUAN HỆ & ĐỊA CHỈ"),
                      _buildDropdownField(
                        "Quan hệ với bạn",
                        Icons.family_restroom_rounded,
                        ['Bản thân', 'Bố', 'Mẹ', 'Vợ', 'Chồng', 'Con', 'Khác'],
                        _selectedRelation,
                        (val) => setState(() => _selectedRelation = val!),
                      ),
                      const SizedBox(height: 16),
                      _buildTextField(
                        _addressController,
                        "Địa chỉ chi tiết",
                        Icons.location_on_rounded,
                        "Vui lòng nhập địa chỉ",
                      ),
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 40),
        child: _buildSubmitButton(),
      ),
    );
  }

  Widget _buildSectionLabel(String label) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 12),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w800,
          color: secondaryGrey,
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  Widget _buildTextField(
    TextEditingController ctrl,
    String label,
    IconData icon,
    String errorMsg, {
    TextInputType? keyboardType,
  }) {
    return TextFormField(
      controller: ctrl,
      keyboardType: keyboardType,
      style: TextStyle(fontWeight: FontWeight.w600, color: textDark),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: secondaryGrey,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: Icon(icon, color: primaryBlue, size: 22),
        filled: true,
        fillColor: bgInput,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: primaryBlue.withOpacity(0.5),
            width: 1.5,
          ),
        ),
        errorStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
      validator: (value) => value == null || value.isEmpty ? errorMsg : null,
    );
  }

  Widget _buildDatePickerField() {
    return InkWell(
      onTap: _presentDatePicker,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        decoration: BoxDecoration(
          color: bgInput,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Icon(Icons.calendar_today_rounded, color: primaryBlue, size: 20),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                "Ngày sinh",
                style: TextStyle(color: secondaryGrey, fontSize: 13),
              ),
            ),
            Text(
              DateFormat('dd/MM/yyyy').format(_selectedDate),
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: textDark,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdownField(
    String label,
    IconData icon,
    List<String> items,
    String currentVal,
    Function(String?) onChanged,
  ) {
    return DropdownButtonFormField<String>(
      value: currentVal,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        color: textDark,
        fontSize: 15,
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: secondaryGrey,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: Icon(icon, color: primaryBlue, size: 22),
        filled: true,
        fillColor: bgInput,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
      items: items
          .map((e) => DropdownMenuItem(value: e, child: Text(e)))
          .toList(),
      onChanged: onChanged,
    );
  }

  Widget _buildSubmitButton() {
    return BlocBuilder<PatientFormBloc, PatientFormState>(
      builder: (context, state) {
        final isLoading = state.status == PatientFormStatus.loading;
        return Container(
          width: double.infinity,
          height: 58,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: primaryBlue,
            boxShadow: [
              BoxShadow(
                color: primaryBlue.withOpacity(0.3),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            onPressed: isLoading ? null : _submitData,
            child: isLoading
                ? const SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2.5,
                    ),
                  )
                : const Text(
                    "LƯU HỒ SƠ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                      letterSpacing: 1.2,
                    ),
                  ),
          ),
        );
      },
    );
  }
}
