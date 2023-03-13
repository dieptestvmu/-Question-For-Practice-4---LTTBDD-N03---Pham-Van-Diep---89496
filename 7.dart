void main(){
  Map<String, int> fax = {
    'Diep': 01234567,
    'An': 138547956,
    'Quang': 03215873496,
    'Vinh': 29042314
  };
  print(fax);
  fax.removeWhere((key,value) => key.length != 4);
  print('Cac khoa co do dai 4 la\n');
  print(fax);
}