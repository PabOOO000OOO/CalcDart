import "dart:io";
import "dart:math";
void main(List<String> arguments) {
  print("Выбери режим");
  print("1.Цифры");
  print("2.Логика");
  int vibor=int.parse(stdin.readLineSync()!);
  if (vibor == 1){
    print("Введи первое число");
    double num1 = double.parse(stdin.readLineSync()!);
    print("Введи второе число");
    double num2 = double.parse(stdin.readLineSync()!);
    print("Введи операцию");
    String op=stdin.readLineSync()!;

    switch (op){
      case "+": print("Сложение: ${num1+num2}"); break;
      case "-": print("Вычитание: ${num1-num2}"); break;
      case "*": print("Умножение: ${num1*num2}"); break;
      case "==": print("Равно: ${num1==num2}"); break;
      case "!=": print("Не равно: ${num1!=num2}"); break;
      case ">": print("Больше: ${num1>num2}"); break;
      case "<": print("Меньше: ${num1<num2}"); break;
      case ">=": print("Больше или равно: ${num1>=num2}"); break;
      case "<=": print("Меньше или равно: ${num1<=num2}"); break;
      case "/":
      if (num2==0){
        print("Нельзя делить на ноль");
      }else {print("Деление: ${num1/num2}"); break;}
      case "~/":
      if (num2==0){
        print("Нельзя делить на ноль");
      }else {print("Деление целочисленное: ${num1~/num2}"); break;}
      case "%":
      if (num2==0){
        print("Нельзя делить на ноль");
      }else {print("Остаток от деления: ${num1%num2}"); break;}
      case "pow": print(pow(num1,num2)) ;
      default: print("Неверный выбор");
    }
  } else if (vibor == 2){
    print("Введи True|False");
    bool num1 = bool.parse(stdin.readLineSync()!);
    print("Введи True|False");
    bool num2 = bool.parse(stdin.readLineSync()!);
    print("Введи операцию");
    String op=stdin.readLineSync()!;
    switch (op){
      case "&&": print("И: ${num1&&num2}"); break;
      case "||": print("ИЛИ: ${num1||num2}"); break;
      case "!": print("НЕ: ${!num1}"); break;
    }
  }

}