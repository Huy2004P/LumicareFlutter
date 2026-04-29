import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ConfirmPhotoList extends StatelessWidget {
  final List<XFile> photos;

  const ConfirmPhotoList({super.key, required this.photos});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80, // Chiều cao tối ưu cho ảnh thumbnail
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: photos.length,
        itemBuilder: (context, index) {
          return Container(
            width: 80,
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFF4F4F4), width: 1),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(11),
              child: Image.file(
                File(photos[index].path),
                fit: BoxFit.cover,
                // Error handling phòng trường hợp file path bị lỗi
                errorBuilder: (ctx, error, stack) => const Center(
                  child: Icon(
                    Icons.broken_image_rounded,
                    color: Color(0xFFC9C9CD),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
