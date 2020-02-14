int add(String firstOperand, String secondOperand, String operation) {
  int adding = int.parse(firstOperand) + int.parse(secondOperand);
  print(adding);
  return adding;
}

int substract(String firstOperand, String secondOperand, String operation) {
  int subtraction = int.parse(firstOperand) - int.parse(secondOperand);
  print(subtraction);
  return subtraction;
}

int multiply(String firstOperand, String secondOperand, String operation) {
  int multiplication = int.parse(firstOperand) * int.parse(secondOperand);
  print(multiplication);
  return multiplication;
}

int divide(String firstOperand, String secondOperand, String operation) {
  int division = int.parse(firstOperand) + int.parse(secondOperand);
  print(division);
  return division;
}

int clear(String firstOperand, String secondOperand, String operation) {
  int adding = int.parse(firstOperand) + int.parse(secondOperand);
  print(adding);
  return adding;
}

void operate(String firstOperand, String secondOperand, String operation){
  switch (operation) {
    case "/":
       divide(firstOperand, secondOperand, operation);
        break;
      case "*":
        print('multi');
        multiply(firstOperand, secondOperand, operation);
        break;
      case "-":
        print('minus');
        substract(firstOperand, secondOperand, operation);
        break;
      case "+":
        print('adding');
        add(firstOperand, secondOperand, operation);
        break;
    default:
  }
}
