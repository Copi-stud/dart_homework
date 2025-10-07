import 'dart:io';

void main(List<String> arguments) {
  stdout.write('정수를 입력하세요: ');
  String? input = stdin.readLineSync(); // 입력 받기

  if (input == null || input.isEmpty) {
    print('입력이 비어 있습니다.');
    return;
  }

  int number = int.parse(input);
  int sum = 0;

  if (number < 0) {
    // 음수면 그대로 출력
    print(number);
    return;
  }

  // 각 자리수 합 계산
  while (number > 0) {
    sum += number % 10;
    number ~/= 10;
  }

  print('각 자리의 합: $sum');
}