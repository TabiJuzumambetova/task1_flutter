import 'dart:math'; 
void main() {
  weekDays();
}

void weekDays(){
  String lang;
  List<String> arrRu = ["пн", "вт", "среда", "чт", "пт", "суббота", "вс"];
  List<String> arrEn = ["md", "td", "wd", "thd", "fd", "std", "sd"];
  List<String> selectedArr = [];

 
  Random random = Random();
  int randomLang = random.nextInt(2);

  if (randomLang == 0) {
    lang = "ru";
    selectedArr = arrRu;
  } else {
    lang = "en";
    selectedArr = arrEn;
  }

  print("Выбранный язык: $lang");
  print("Дни недели: $selectedArr");
}
