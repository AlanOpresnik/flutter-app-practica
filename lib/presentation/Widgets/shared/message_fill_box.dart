import 'package:flutter/material.dart';

class MessageFillBox extends StatelessWidget {
  const MessageFillBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );
      return Container(
      margin: const EdgeInsets.only(top: 20.0), // Ajusta el valor según tus necesidades
      child: TextFormField(
        onTapOutside: (event) {
          focusNode.unfocus();
        },
        focusNode: focusNode,
        controller: textController,
        decoration: InputDecoration(
          hintText: "End your message with a '?'",
          filled: true,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          suffixIcon: IconButton(
            icon: const Icon(Icons.send_outlined),
            onPressed: () {
              final textValue = textController.value.text;
              print("valor del submit $textValue ");
              textController.clear();
              focusNode.requestFocus();
            },
          ),
        ),
        onFieldSubmitted: (value) {
          print("Submit $value");
          textController.clear();
          focusNode.requestFocus();
        },
      ),
    );
  }
}