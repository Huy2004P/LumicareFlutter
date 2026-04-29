import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../bloc/location_add_bloc.dart';
import '../widgets/location_label.dart';
import '../widgets/location_dropdown.dart';
import '../widgets/location_input_field.dart';
import '../widgets/location_save_button.dart';

class LocationAddPage extends StatefulWidget {
  final int patientId;
  const LocationAddPage({super.key, required this.patientId});

  @override
  State<LocationAddPage> createState() => _LocationAddPageState();
}

class _LocationAddPageState extends State<LocationAddPage> {
  final labelController = TextEditingController(text: "Nhà riêng");
  final detailController = TextEditingController();

  List<dynamic> provinces = [], districts = [], wards = [];
  String? selectedProvinceCode, selectedDistrictCode, selectedWardCode;
  String provinceName = "", districtName = "", wardName = "";
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _fetchProvinces();
  }

  @override
  void dispose() {
    labelController.dispose();
    detailController.dispose();
    super.dispose();
  }

  Future<void> _fetchProvinces() async {
    setState(() => isLoading = true);
    try {
      final res = await http.get(
        Uri.parse('https://provinces.open-api.vn/api/p/'),
      );
      if (res.statusCode == 200) {
        setState(() {
          provinces = json.decode(res.body);
          provinces.sort((a, b) => a['name'].compareTo(b['name']));
        });
      }
    } catch (e) {
    } finally {
      setState(() => isLoading = false);
    }
  }

  Future<void> _fetchDistricts(String code) async {
    setState(() => isLoading = true);
    try {
      final res = await http.get(
        Uri.parse('https://provinces.open-api.vn/api/p/$code?depth=2'),
      );
      if (res.statusCode == 200) {
        setState(() {
          districts = json.decode(res.body)['districts'];
          selectedDistrictCode = null;
          selectedWardCode = null;
          wards = [];
        });
      }
    } catch (e) {
    } finally {
      setState(() => isLoading = false);
    }
  }

  Future<void> _fetchWards(String code) async {
    setState(() => isLoading = true);
    try {
      final res = await http.get(
        Uri.parse('https://provinces.open-api.vn/api/d/$code?depth=2'),
      );
      if (res.statusCode == 200) {
        setState(() {
          wards = json.decode(res.body)['wards'];
          selectedWardCode = null;
        });
      }
    } catch (e) {
    } finally {
      setState(() => isLoading = false);
    }
  }

  void _onSave() {
    if (selectedProvinceCode == null ||
        selectedDistrictCode == null ||
        selectedWardCode == null ||
        detailController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Vui lòng điền đầy đủ thông tin địa chỉ!"),
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }

    final location = LocationEntity(
      id: 0,
      userId: widget.patientId,
      label: labelController.text,
      addressDetail: detailController.text,
      province: provinceName,
      district: districtName,
      ward: wardName,
      latitude: 0,
      longitude: 0,
      isDefault: false,
    );
    context.read<LocationAddBloc>().add(LocationAddSubmitted(location));
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: BlocListener<LocationAddBloc, LocationAddState>(
        listener: (context, state) {
          if (state is LocationAddSuccess) Navigator.pop(context, true);
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            title: const Text(
              "THÊM ĐỊA CHỈ MỚI",
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
          body: Stack(
            children: [
              SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LocationLabel(label: "THÔNG TIN CƠ BẢN"),
                    LocationInputField(
                      controller: labelController,
                      label: "Tên gợi nhớ (VD: Nhà riêng, Công ty)",
                      icon: Icons.bookmark_outline_rounded,
                    ),
                    const SizedBox(height: 24),
                    const LocationLabel(label: "VỊ TRÍ HÀNH CHÍNH"),
                    LocationDropdown(
                      label: "Tỉnh/Thành phố",
                      items: provinces,
                      value: selectedProvinceCode,
                      onChanged: (val) {
                        setState(() {
                          selectedProvinceCode = val;
                          provinceName = provinces.firstWhere(
                            (p) => p['code'].toString() == val,
                          )['name'];
                        });
                        _fetchDistricts(val!);
                      },
                    ),
                    const SizedBox(height: 12),
                    LocationDropdown(
                      label: "Quận/Huyện",
                      items: districts,
                      value: selectedDistrictCode,
                      onChanged: (val) {
                        setState(() {
                          selectedDistrictCode = val;
                          districtName = districts.firstWhere(
                            (d) => d['code'].toString() == val,
                          )['name'];
                        });
                        _fetchWards(val!);
                      },
                    ),
                    const SizedBox(height: 12),
                    LocationDropdown(
                      label: "Phường/Xã",
                      items: wards,
                      value: selectedWardCode,
                      onChanged: (val) {
                        setState(() {
                          selectedWardCode = val;
                          wardName = wards.firstWhere(
                            (w) => w['code'].toString() == val,
                          )['name'];
                        });
                      },
                    ),
                    const SizedBox(height: 24),
                    const LocationLabel(label: "ĐỊA CHỈ CHI TIẾT"),
                    LocationInputField(
                      controller: detailController,
                      label: "Số nhà, tên đường...",
                      icon: Icons.home_work_outlined,
                      maxLines: 3,
                    ),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
              if (isLoading)
                Container(
                  color: Colors.black.withOpacity(0.05),
                  child: const Center(
                    child: CircularProgressIndicator(color: Color(0xFF0075FF)),
                  ),
                ),
            ],
          ),
          bottomSheet: LocationSaveButton(onTap: _onSave),
        ),
      ),
    );
  }
}
