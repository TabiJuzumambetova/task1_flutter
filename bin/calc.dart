import 'dart:io';

void main() {
  printInput();
}

void printInput() {
  double? firstNum;
  double? secondNum;

  for (var i = 1; i <= 2; i++) {
    print("Enter the $i number: ");
    var input = stdin.readLineSync();
    var parsedInput = double.tryParse(input!);

    if (parsedInput != null) {
      if (i == 1) {
        firstNum = parsedInput;
      } else if (i == 2) {
        secondNum = parsedInput;
      }
    } else {
      print("Invalid input. Please enter a valid number.");
      i--;
    }
  }
  if (firstNum != null && secondNum != null) {
    print("First number: ${formatNumber(firstNum)}");
    print("Second number: ${formatNumber(secondNum)}");
    print("Choose the operation: + , - , * , / ");
    var choose = stdin.readLineSync()!;

    switch (choose) {
      case "+":
        var result = calcSum(firstNum, secondNum);
        print("Result: ${formatNumber(result)}");
        break;
      case "-":
        var result = calcMinus(firstNum, secondNum);
        print("Result: ${formatNumber(result)}");
        break;
      case "*":
        var result = calcMul(firstNum, secondNum);
        print("Result: ${formatNumber(result)}");
        break;
      case "/":
        var result = calcDiv(firstNum, secondNum);
        print("Result: ${formatNumber(result)}");
        break;
      default:
        print("Invalid operation");
    }
  }
}

double calcSum(double firstNum, double secondNum) {
  return firstNum + secondNum;
}

double calcMinus(double firstNum, double secondNum) {
  return firstNum - secondNum;
}

double calcMul(double firstNum, double secondNum) {
  return firstNum * secondNum;
}

double calcDiv(double firstNum, double secondNum) {
  if (secondNum == 0) {
    print("Division by zero is not allowed.");
    return double.nan; 
  }
  return firstNum / secondNum;
}

String formatNumber(double number) {
  if (number == number.toInt()) {
    return number.toInt().toString();
  } else {
    return number.toString();
  }
}
