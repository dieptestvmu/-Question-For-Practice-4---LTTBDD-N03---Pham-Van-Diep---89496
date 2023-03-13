void main(){
  Map<String, int> ChiPhi = {
    'Dien': 1000,
    'Nuoc': 500,
    'Nha': 2000,
  };
  print(ChiPhi);
  int TongCP = 0;
  ChiPhi.forEach((key,value)=> TongCP += value);
    print("Tong chi phi la: $TongCP");
}