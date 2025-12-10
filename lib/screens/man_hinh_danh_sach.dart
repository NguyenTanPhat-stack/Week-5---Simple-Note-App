import 'package:flutter/material.dart';
import '../data/du_lieu_mau.dart';
import '../models/ghi_chu.dart';
import '../widgets/item_ghi_chu.dart';
import 'man_hinh_them_sua.dart';

class ManHinhDanhSach extends StatefulWidget {
  const ManHinhDanhSach({super.key});

  @override
  State<ManHinhDanhSach> createState() => _ManHinhDanhSachState();
}

class _ManHinhDanhSachState extends State<ManHinhDanhSach> {
  final List<GhiChu> _dsGhiChu = List.from(duLieuGhiChuMau);

  void _hienCauTraLoi(GhiChu ghiChu) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text(ghiChu.cauHoi),
          content: Text(ghiChu.cauTraLoi),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Đóng'),
            ),
          ],
        );
      },
    );
  }

  void _moManHinhThemSua({GhiChu? ghiChu, int? index}) async {
    final ketQua = await Navigator.push<GhiChu>(
      context,
      MaterialPageRoute(
        builder: (_) => ManHinhThemSua(
          ghiChuBanDau: ghiChu,
        ),
      ),
    );

    if (ketQua != null) {
      setState(() {
        if (ghiChu == null) {
          // thêm mới
          _dsGhiChu.add(ketQua);
        } else if (index != null) {
          // sửa
          _dsGhiChu[index] = ketQua;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ghi chú lý thuyết tuần 5'),
      ),
      body: ListView.builder(
        itemCount: _dsGhiChu.length,
        itemBuilder: (context, index) {
          final ghiChu = _dsGhiChu[index];
          return ItemGhiChu(
            ghiChu: ghiChu,
            onTap: () => _hienCauTraLoi(ghiChu),
            onEdit: () => _moManHinhThemSua(ghiChu: ghiChu, index: index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _moManHinhThemSua(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
