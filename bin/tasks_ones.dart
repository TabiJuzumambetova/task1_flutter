
import 'dart:io';
void main(){
   for (int i = 0; i < 5; i++)
            {
                print("Выбери задание: ");
                int a = int.parse(stdin.readLineSync()!);
                

                switch (a)
                {
                    case 1: checkIsEven();  break;
                    case 2: mulTab(); break;
                    case 3: temp(); break;
                    case 4: currency() ; break;

                }
            }
  
}
void checkIsEven(){
  print("Enter first number: ");
   var input = stdin.readLineSync();
    var parsedInput = double.tryParse(input!);
   if(parsedInput !% 2 ==0){
  
  print(true);
   }
   else{
  print(false);
   }
}
 void mulTab(){
   print("Enter the  number: ");
   var input = stdin.readLineSync();
    var parsedInput = int.parse(input!);
   //int parsedInput=6;
    for(int i=1;i<10;i++){
      
        int result=parsedInput*i;
        print("$parsedInput * $i = $result");
      

    }

 }
 void temp(){
  print("Enter the degree: ");
   var input = stdin.readLineSync();
   var parsedInput = int.parse(input!);
   var result = (parsedInput-32)*5/9;
   print("Result Celsius: $result");

   print("Enter the Celsius: ");
   var input2 = stdin.readLineSync();
   var parsedInput2 = int.tryParse(input2!);
   var result2 = 5/9* parsedInput2!+32;
   print("Result degree: $result2");
 }
 void currency(){
  print("Введите сумму для конвертации:");
  double amount = double.parse(stdin.readLineSync()!);

  print("Введите название текущей валюты:");
  String fromCurrency = stdin.readLineSync()!;

  print("Введите стоимость текущей валюты в другой валюте:");
  double exchangeRate = double.parse(stdin.readLineSync()!);

  double convertedAmount = convertCurrency(amount, exchangeRate);

  print("Результат конвертации: $amount $fromCurrency = $convertedAmount другой валюты");
}

double convertCurrency(double amount, double exchangeRate) {
  return amount * exchangeRate;
   

 }
