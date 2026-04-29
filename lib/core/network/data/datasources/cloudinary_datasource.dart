import 'package:dio/dio.dart';

class CloudinaryDataSource {
  final Dio _dio = Dio();
  final String cloudName = "dzg74hejz";
  final String uploadPreset = "huy_preset";

  Future<String?> uploadImage(List<int> bytes) async {
    try {
      final formData = FormData.fromMap({
        "file": MultipartFile.fromBytes(
          bytes,
          filename: "avatar_${DateTime.now().millisecondsSinceEpoch}.jpg",
        ),
        "upload_preset": uploadPreset,
      });

      final response = await _dio.post(
        "https://api.cloudinary.com/v1_1/$cloudName/image/upload",
        data: formData,
      );

      if (response.statusCode == 200) {
        return response.data['secure_url'] as String;
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
