int add(String firstOperand, String secondOperand, String operation) {
  int adding = 0;
  if (firstOperand == "") {
    adding = int.parse(secondOperand);
  } else if (secondOperand == "") {
    adding = int.parse(firstOperand);
  } else {
    adding = int.parse(firstOperand) + int.parse(secondOperand);
  }
  print(adding);
  return adding;
}

int substract(String firstOperand, String secondOperand, String operation) {
  int subtraction = 0;
  if (firstOperand == "") {
    subtraction = (int.parse(secondOperand) * (-1));
  } else if (secondOperand == "") {
    subtraction = int.parse(firstOperand);
  } else {
    subtraction = int.parse(firstOperand) - int.parse(secondOperand);
  }
  print(subtraction);
  return subtraction;
}

int multiply(String firstOperand, String secondOperand, String operation) {
  int multiplication = 0;
  if (firstOperand == "") {
    multiplication = (int.parse(secondOperand));
  } else if (secondOperand == "") {
    multiplication = int.parse(firstOperand)*0;
  } else {
    multiplication = int.parse(firstOperand) * int.parse(secondOperand);
  }
  print(multiplication);
  return multiplication;
}

int divide(String firstOperand, String secondOperand, String operation) {
  int division = 0;
  if (firstOperand == "") {
    division = (int.parse(secondOperand));
  } else if (secondOperand == "") {
    division = int.parse(firstOperand)*0;
  } else {
    division = (int.parse(firstOperand)) ~/ (int.parse(secondOperand));
  }  
  print(division);
  return division;
}

int clear(String firstOperand, String secondOperand, String operation) {
  int adding = int.parse(firstOperand) + int.parse(secondOperand);
  print(adding);
  return adding;
}

String operate(String firstOperand, String secondOperand, String operation) {
  switch (operation) {
    case "/":
      return divide(firstOperand, secondOperand, operation).toString();
      break;
    case "*":
      //print('multi');
      return multiply(firstOperand, secondOperand, operation).toString();
      break;
    case "-":
      //print('minus');
      return substract(firstOperand, secondOperand, operation).toString();
      break;
    case "+":
      //print('adding');
      return add(firstOperand, secondOperand, operation).toString();
      break;
    default:
  }
}
