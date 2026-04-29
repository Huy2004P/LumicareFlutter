import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BookingPhotoPicker extends StatelessWidget {
  final List<XFile> photos;
  final VoidCallback onAdd;
  final Function(int) onRemove;
  const BookingPhotoPicker({
    super.key,
    required this.photos,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: photos.length + 1,
        itemBuilder: (ctx, i) {
          if (i == photos.length) {
            return GestureDetector(
              onTap: onAdd,
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFFF4F4F4),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Icon(
                  Icons.add_a_photo_rounded,
                  color: Color(0xFF0075FF),
                  size: 28,
                ),
              ),
            );
          }
          return Container(
            width: 100,
            margin: const EdgeInsets.only(right: 12),
            child: Stack(
              children: [
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.file(File(photos[i].path), fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  top: 6,
                  right: 6,
                  child: GestureDetector(
                    onTap: () => onRemove(i),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.close_rounded,
                        color: Color(0xFFE23B4A),
                        size: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
