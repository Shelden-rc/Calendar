import 'package:flutter/material.dart';

import 'my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.lightBlueAccent,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Ввод данных пользователя
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Добавить новую привычку",
              ),
            ),

            // Сохранение и отмена
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Сохранение
                MyButton(text: "Добавитьа", onPressed: onSave),

                const SizedBox(width: 8),

                // Отмена
                MyButton(text: "Отмена", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
