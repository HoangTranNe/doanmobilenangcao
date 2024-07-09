// tạo cho tôi 1 trang hiển thị các sản phẩm yêu thích
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yêu Thích"),
      ),
      body: const Center(
        child: Text("Trang Yêu Thích"),
      ),
    );
  }
}
