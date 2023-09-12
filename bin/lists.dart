void main(){
   summList();//Сумма элементов списка
   midSumList();//Среднее значение списка
  }
void summList() {
  List<int> num = [1, 2, 3, 6, 8, 3, 4, 0, 9];
  int sum = 0; 

  for (int i = 0; i < num.length; i++) {
    sum += num[i]; 
  }

  print("Сумма всех элементов: $sum"); 

}


void midSumList() {
  List<int> num = [1, 2, 3, 6, 8, 3, 4, 0, 9];
  int sum = 0; 

  for (int i = 0; i < num.length; i++) {
    sum += num[i]; 
  }

  print("Среднее значение списка: ${sum/2}"); 

}


void minElement(){
  
}
