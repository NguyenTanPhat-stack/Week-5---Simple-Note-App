import '../models/ghi_chu.dart';

final List<GhiChu> duLieuGhiChuMau = [
  GhiChu(
    cauHoi: 'Câu 1: Flutter là gì?',
    cauTraLoi:
        'Flutter là bộ SDK phát triển ứng dụng đa nền tảng của Google, dùng ngôn ngữ Dart để xây dựng UI native cho Android, iOS, web, desktop.',
  ),
  GhiChu(
    cauHoi: 'Câu 2: Widget trong Flutter là gì?',
    cauTraLoi:
        'Widget là đơn vị cơ bản để xây dựng giao diện trong Flutter, mọi thứ trên màn hình đều là widget.',
  ),
  GhiChu(
    cauHoi: 'Câu 3: StatelessWidget khác StatefulWidget thế nào?',
    cauTraLoi:
        'StatelessWidget không thay đổi được trạng thái nội tại sau khi build; StatefulWidget có thể thay đổi state và gọi setState để cập nhật UI.',
  ),
  GhiChu(
    cauHoi: 'Câu 4: Hot reload là gì?',
    cauTraLoi:
        'Hot reload cho phép cập nhật UI nhanh mà không mất trạng thái hiện tại của ứng dụng, giúp tăng tốc quá trình phát triển.',
  ),
];
