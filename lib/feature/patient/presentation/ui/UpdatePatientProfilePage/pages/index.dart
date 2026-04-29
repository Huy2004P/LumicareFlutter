import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../bloc/PatientUpdateBloc.dart';
import '../bloc/PatientUpdateEvent.dart';
import '../bloc/PatientUpdateState.dart';
import '../widgets/update_input_field.dart';
import '../widgets/update_dropdown_field.dart';

class PatientUpdatePage extends StatefulWidget {
  final PatientProfileEntity profile;
  const PatientUpdatePage({super.key, required this.profile});

  @override
  State<PatientUpdatePage> createState() => _PatientUpdatePageState();
}

class _PatientUpdatePageState extends State<PatientUpdatePage> {
  late TextEditingController nameController;
  late TextEditingController phoneController;
  late TextEditingController addressController;
  late String selectedGender;
  late String selectedRelation;

  final List<String> genderItems = ["Nam", "Nữ", "Khác"];
  final List<String> relationItems = [
    "Tôi",
    "Bố",
    "Mẹ",
    "Vợ",
    "Chồng",
    "Con",
    "Anh/Chị",
    "Em",
    "Khác",
  ];

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.profile.fullName);
    phoneController = TextEditingController(text: widget.profile.phoneNumber);
    addressController = TextEditingController(text: widget.profile.address);
    selectedGender = genderItems.contains(widget.profile.gender)
        ? widget.profile.gender
        : genderItems.last;
    selectedRelation = widget.profile.relationship == "Bản thân"
        ? "Tôi"
        : (relationItems.contains(widget.profile.relationship)
              ? widget.profile.relationship
              : "Khác");
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    addressController.dispose();
    super.dispose();
  }

  void _handleSubmit() {
    final updatedProfile = PatientProfileEntity(
      id: widget.profile.id,
      userId: widget.profile.userId,
      fullName: nameController.text,
      birthday: widget.profile.birthday,
      gender: selectedGender,
      phoneNumber: phoneController.text,
      address: addressController.text,
      relationship: selectedRelation == "Tôi" ? "Bản thân" : selectedRelation,
    );
    context.read<PatientUpdateBloc>().add(
      PatientUpdateSubmitted(updatedProfile),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: BlocListener<PatientUpdateBloc, PatientUpdateState>(
        listener: (context, state) {
          if (state.status == PatientUpdateStatus.success)
            Navigator.pop(context, true);
          if (state.status == PatientUpdateStatus.error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage ?? "Lỗi cập nhật"),
                backgroundColor: Colors.red,
              ),
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
              "SỬA HỒ SƠ",
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
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                UpdateInputField(
                  controller: nameController,
                  label: "Họ và tên",
                  icon: Icons.person_outline_rounded,
                ),
                const SizedBox(height: 16),
                UpdateDropdownField(
                  label: "Giới tính",
                  value: selectedGender,
                  items: genderItems,
                  icon: Icons.wc_rounded,
                  onChanged: (val) => setState(() => selectedGender = val!),
                ),
                const SizedBox(height: 16),
                UpdateInputField(
                  controller: phoneController,
                  label: "Số điện thoại",
                  icon: Icons.phone_android_rounded,
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 16),
                UpdateInputField(
                  controller: addressController,
                  label: "Địa chỉ",
                  icon: Icons.location_on_outlined,
                  maxLines: 2,
                ),
                const SizedBox(height: 16),
                UpdateDropdownField(
                  label: "Quan hệ với bạn",
                  value: selectedRelation,
                  items: relationItems,
                  icon: Icons.family_restroom_rounded,
                  onChanged: (val) => setState(() => selectedRelation = val!),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
          bottomNavigationBar: _buildBottomBar(),
        ),
      ),
    );
  }

  Widget _buildBottomBar() {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 12, 24, 32),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Color(0xFFF4F4F4))),
      ),
      child: BlocBuilder<PatientUpdateBloc, PatientUpdateState>(
        builder: (context, state) {
          return SizedBox(
            height: 54,
            child: ElevatedButton(
              onPressed: state.status == PatientUpdateStatus.loading
                  ? null
                  : _handleSubmit,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0075FF),
                foregroundColor: Colors.white,
                elevation: 0,
                shape: const StadiumBorder(),
              ),
              child: state.status == PatientUpdateStatus.loading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    )
                  : const Text(
                      "LƯU THAY ĐỔI",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }
}
