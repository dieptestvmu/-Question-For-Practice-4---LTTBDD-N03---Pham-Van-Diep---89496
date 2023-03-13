void main(){
  List<String> names_friend = ['Trang', 'Anh', 'An', 'Viet', 'Quang', 'Huy', 'Au'];
  print(names_friend);
  List<String> StartWith_A = names_friend.where((name)=> name.startsWith('A')).toList();
  print(StartWith_A);
}