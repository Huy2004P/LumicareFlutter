import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/newsarticle_model.dart'; // Huy check lại đường dẫn này nha

abstract class NewsRemoteDataSource {
  Future<List<NewsArticle>> getHealthNews();
}

class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  final http.Client client;
  NewsRemoteDataSourceImpl({required this.client});

  @override
  Future<List<NewsArticle>> getHealthNews() async {
    const String apiKey = "ee3864a15f21001e80acd03c62fcd420";

    // 🎯 SỬA THÀNH ĐƯỜNG DẪN NÀY:
    // Dùng top-headlines thay vì search
    // category=health: Chỉ lấy tin Y tế
    // lang=vi: Chỉ lấy Tiếng Việt
    const String url =
        "https://gnews.io/api/v4/top-headlines?category=health&lang=vi&apikey=$apiKey";

    try {
      final response = await client.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final List? articlesJson = data['articles'];

        if (articlesJson == null || articlesJson.isEmpty) {
          // 💡 Case dự phòng: Nếu Y tế Việt Nam đang trống, lấy tin Tổng hợp để App không bị trắng
          return _getBackupNews(apiKey);
        }

        return articlesJson.map((json) => NewsArticle.fromJson(json)).toList();
      } else {
        throw Exception("Lỗi server GNews: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Huy ơi, kiểm tra lại mạng hoặc Key nha: $e");
    }
  }

  // 🛡️ HÀM DỰ PHÒNG: Nếu tin Y tế trống thì lấy tin Tổng hợp Tiếng Việt cho đỡ trống App
  Future<List<NewsArticle>> _getBackupNews(String apiKey) async {
    final url = "https://gnews.io/api/v4/top-headlines?lang=vi&apikey=$apiKey";
    final response = await client.get(Uri.parse(url));
    final data = json.decode(response.body);
    final List articles = data['articles'];
    return articles.map((json) => NewsArticle.fromJson(json)).toList();
  }
}
