import 'package:echochat/presentation/widgets/custom_button.dart';
import 'package:echochat/presentation/widgets/custom_textfield.dart';
import 'package:echochat/presentation/widgets/topics_widget.dart';
import 'package:flutter/material.dart';

class StartingWidget extends StatefulWidget {
  const StartingWidget({super.key});

  @override
  State<StartingWidget> createState() => _StartingWidgetState();
}

class _StartingWidgetState extends State<StartingWidget> {
  void _onNameEntered() {
    Navigator.of(context).pop();
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) => TopicsWidget(),
      );
  }

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
            CustomTextField(
              labelText: 'Name',
              controller: TextEditingController(),
            ),
            SizedBox(height: 16),
            CustomButton(
              onPressed: _onNameEntered,
              text: "Get Started!",
            )
          ],
        ),
      ),
    );
  }
}
