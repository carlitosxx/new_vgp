import 'package:flutter/material.dart';

class TextfieldWidget extends StatefulWidget {
  const TextfieldWidget({
    required this.controller,
    required this.inputType,
    required this.hint,
    required this.isPassword,
    super.key,
  });

  final TextEditingController controller;
  final String hint;
  final TextInputType inputType;
  final bool isPassword;

  @override
  State<TextfieldWidget> createState() => _TextfieldWidgetState();
}

class _TextfieldWidgetState extends State<TextfieldWidget> {
  bool isOpen = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.onBackground.withOpacity(.05),
      ),
      child: Stack(
        children: [
          Visibility(
            visible: widget.isPassword,
            child: Positioned(
              right: 15,
              top: 12,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isOpen = !isOpen;
                  });
                },
                child: Icon(
                  isOpen ? Icons.visibility : Icons.visibility_off,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              style:
                  TextStyle(color: Theme.of(context).colorScheme.onBackground),
              controller: widget.controller,
              obscureText: !isOpen,
              maxLength: 50,
              keyboardType: widget.inputType,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                counterText: '',
                border: InputBorder.none,
                hintText: widget.hint,
                hintStyle: TextStyle(
                  color: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(0.3),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
