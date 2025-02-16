import 'package:echochat/presentation/widgets/custom_button.dart';
import 'package:echochat/presentation/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class StartingWidget extends StatelessWidget {
  const StartingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3, // Adjustable height
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextField(labelText: 'Name',controller: TextEditingController(),),
            SizedBox(height: 16),
            CustomButton(onPressed: (){},text: "Get Started!",)
          ],
        ),
      ),
    );

  }
}