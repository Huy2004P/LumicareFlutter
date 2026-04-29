import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/news_bloc.dart';
import '../widgets/news_card.dart';
import '../widgets/news_shimmer.dart';
import '../widgets/news_error_view.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Color(0xFF191C1F),
              size: 20,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text(
            "TIN TỨC Y KHOA",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              letterSpacing: 1.2,
              color: Color(0xFF191C1F),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () =>
                  context.read<NewsBloc>().add(GetHomeNewsStarted()),
              icon: const Icon(Icons.sync_rounded, color: Color(0xFF0075FF)),
            ),
            const SizedBox(width: 8),
          ],
        ),
        body: RefreshIndicator(
          color: const Color(0xFF0075FF),
          onRefresh: () async =>
              context.read<NewsBloc>().add(GetHomeNewsStarted()),
          child: BlocBuilder<NewsBloc, NewsState>(
            builder: (context, state) {
              if (state is NewsLoadInProgress) return const NewsShimmer();
              if (state is NewsLoadSuccess) return _buildList(state.news);
              if (state is NewsLoadFailure) {
                return NewsErrorView(message: state.errorMessage);
              }
              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }

  Widget _buildList(List news) {
    if (news.isEmpty) {
      return const Center(
        child: Text(
          "Chưa có tin tức mới",
          style: TextStyle(color: Color(0xFF8D969E)),
        ),
      );
    }
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: news.length,
      itemBuilder: (context, index) => NewsCard(article: news[index]),
    );
  }
}
