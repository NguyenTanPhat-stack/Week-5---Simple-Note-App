import 'package:flutter/material.dart';
import '../models/ghi_chu.dart';

class ItemGhiChu extends StatelessWidget {
  final GhiChu ghiChu;
  final VoidCallback? onTap;
  final VoidCallback? onEdit;

  const ItemGhiChu({
    super.key,
    required this.ghiChu,
    this.onTap,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        title: Text(
          ghiChu.cauHoi,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: const Text('Chạm để xem câu trả lời'),
        onTap: onTap,
        trailing: IconButton(
          icon: const Icon(Icons.edit),
          onPressed: onEdit,
        ),
      ),
    );
  }
}
