import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _fieldOneTEController = TextEditingController();
  final TextEditingController _fieldTwoTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sum Calculator'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _fieldOneTEController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    hintText: 'Field 1',
                  ),
                  validator: (String? value) {
                    if (value?.isEmpty ?? true) {
                      return 'Enter valid value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _fieldTwoTEController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Field 2',
                  ),
                  validator: (String? value) {
                    if (value?.isEmpty ?? true) {
                      return 'Enter valid value';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          double firstNumber =
                              parseToDouble(_fieldOneTEController.text.trim());
                          double secondNumber =
                              parseToDouble(_fieldTwoTEController.text.trim());
                          print(firstNumber);
                          print(secondNumber);
                          result = addition(firstNumber, secondNumber);
                          setState(() {});
                        }
                      },
                      icon: const Icon(Icons.add),
                      label: const Text('Add'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          double firstNumber =
                              parseToDouble(_fieldOneTEController.text.trim());
                          double secondNumber =
                              parseToDouble(_fieldTwoTEController.text.trim());
                          print(firstNumber);
                          print(secondNumber);
                          result = sub(firstNumber, secondNumber);
                          setState(() {});
                        }
                      },
                      icon: const Icon(Icons.remove),
                      label: const Text('Sub'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          double firstNumber =
                              parseToDouble(_fieldOneTEController.text.trim());
                          double secondNumber =
                              parseToDouble(_fieldTwoTEController.text.trim());
                          print(firstNumber);
                          print(secondNumber);
                          result = multi(firstNumber, secondNumber);
                          setState(() {});
                        }
                      },
                      icon: const Icon(Icons.dangerous),
                      label: const Text('Multiply'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          double firstNumber =
                              parseToDouble(_fieldOneTEController.text.trim());
                          double secondNumber =
                              parseToDouble(_fieldTwoTEController.text.trim());
                          print(firstNumber);
                          print(secondNumber);
                          result = divide(firstNumber, secondNumber);
                          setState(() {});
                        }
                      },
                      icon: const Icon(Icons.density_large),
                      label: const Text('Divide'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          double firstNumber =
                              parseToDouble(_fieldOneTEController.text.trim());
                          double secondNumber =
                              parseToDouble(_fieldTwoTEController.text.trim());
                          print(firstNumber);
                          print(secondNumber);
                          result = mod(firstNumber, secondNumber);
                          setState(() {});
                        }
                      },
                      icon: const Icon(Icons.percent_outlined),
                      label: const Text('Mod'),
                    ),
                  ],
                ),
                Text(
                  'Result is $result',
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  double parseToDouble(String text) {
    return double.tryParse(text) ?? 0;
  }

  double addition(double firstNum, double secondNum) {
    return firstNum + secondNum;
  }


  double sub(double firstNum, double secondNum) {
    return firstNum - secondNum;
  }

  double multi(double firstNum, double secondNum) {
    return firstNum * secondNum;
  }

  double divide(double firstNum, double secondNum) {
    return firstNum / secondNum;
  }

  double mod(double firstNum, double secondNum) {
    return firstNum % secondNum;
  }
}
