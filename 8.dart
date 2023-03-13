import 'dart:io';

void main() {
  List<String?> NhiemVu = ["Xem", "Chơi"];
  XemNV(NhiemVu);
  menu(NhiemVu);
///////////////////////////////////////////////////////////////////
}

void menu(List<String?> NhiemVu) {
  print(" Menu: \n\t1. Thêm nhiệm vụ\n\t2. Xóa nhiệm vụ\n\t3. Xem nhiệm vụ");
  print("Nhập 1 để thêm, nhập 2 để xóa nhiệm vụ, nhập 3 để xem nhiệm vụ: ");
  int? menu = int.parse(stdin.readLineSync()!);
  try {
    if (menu == 1)
      ThemNV(NhiemVu);
    else if (menu == 2)
      XoaNV(NhiemVu);
    else if (menu == 3) {
      XemNV(NhiemVu);
      //menu(NhiemVu);
    } else {
      print("Nhập sai menu, vui lòng nhập lại: ");
      int? menu = int.parse(stdin.readLineSync()!);
    }
  } catch (e) {
    print("Nhập sai menu, vui lòng nhập lại: ");
    int? menu = int.parse(stdin.readLineSync()!);
    if (menu == 1)
      ThemNV(NhiemVu);
    else if (menu == 2)
      XoaNV(NhiemVu);
    else if (menu == 3) {
      XemNV(NhiemVu);
      //menu(NhiemVu);
    }
  }
}

///////////////////////////////////////////////////////////////////
void ThemNV(List<String?> NhiemVu) {
  print("Nhập nhiệm vụ cần thêm: ");
  String? NV = stdin.readLineSync();
  print("Đã thêm $NV");
  NhiemVu.add(NV);
  XemNV(NhiemVu);
  menu(NhiemVu);
}

///////////////////////////////////////////////////////////////////
void XoaNV(List<String?> NhiemVu) {
  print("Nhập thứ tự nhiệm vụ cần xóa: ");
  int? TT_NV = int.parse(stdin.readLineSync()!);
  NhiemVu.removeAt(TT_NV);
  XemNV(NhiemVu);
  menu(NhiemVu);
}

void XemNV(List<String?> NhiemVu) {
  print("---------------------------------------------------\nCác nhiệm vụ:");
  for (int i = 0; i < NhiemVu.length; i++) {
    print("\t${i + 1}. ${NhiemVu[i]}");
  }
  menu(NhiemVu);
}
