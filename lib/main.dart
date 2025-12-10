import 'package:flutter/material.dart';
import 'screens/man_hinh_danh_sach.dart';

void main() {
  runApp(const UngDungGhiChuApp());
}

class UngDungGhiChuApp extends StatelessWidget {
  const UngDungGhiChuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Note App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ManHinhDanhSach(),
    );
  }
}
