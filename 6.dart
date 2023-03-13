void main(){
  Map<String, dynamic> Info = {
    'name': 'Diep',
    'address': 'Thai Binh',
    'age': 20,
    'country': 'VietNam'
  };
  print(Info);
  Info['country'] = 'NhatBan';
  print("\nSau khi doi quoc gia\n");
  print(Info);
}