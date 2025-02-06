import 'package:flutter/material.dart';

enum DialogType { primary, success, danger, warning }

class CustomAlertDialogComponent extends StatelessWidget {
  final String title;
  final String content;
  final DialogType dialogType;
  final double height;
  final void Function()? onConfirm;
  final void Function()? onCancel;

  final bool center;
  final bool topCancelButton;

  const CustomAlertDialogComponent({
    super.key,
    required this.title,
    required this.content,
    this.dialogType = DialogType.success,
    this.height = 250,
    required this.onConfirm,
    required this.onCancel,
    this.center = true,
    this.topCancelButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // title: Center(child: Text('Alert')),
      backgroundColor: Colors.white,
      actionsAlignment: MainAxisAlignment.center,
      content: Container(
        height: 230.0,
        width: 200.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/thumps.png",
              height: 100,
              // width: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            Text(
              content,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: onCancel,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
              Colors.blue,
            ),
            minimumSize: WidgetStateProperty.all(Size(double.infinity, 40)),
            textStyle: WidgetStateProperty.all<TextStyle>(
              TextStyle(color: Colors.white),
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                // side: BorderSide(color: Colors.red),
              ),
            ),
          ),
          child: Text(
            'Sweet',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  CircleAvatar circleIcon({required Color color, required IconData icon}) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: color.withValues(alpha: .1),
      child: CircleAvatar(
        radius: 20,
        backgroundColor: color.withValues(alpha: .2),
        child: Icon(
          // Icons.check_circle_outline_rounded,
          icon,
          color: color,
        ),
      ),
    );
  }

  CircleAvatar centerIcon(DialogType dialogType) {
    switch (dialogType) {
      case DialogType.primary:
        return circleIcon(
          color: Colors.deepPurpleAccent,
          icon: Icons.info_outline_rounded,
        );
      case DialogType.success:
        return circleIcon(
          color: Colors.green,
          icon: Icons.check_circle_outline_rounded,
        );
      case DialogType.danger:
        return circleIcon(
          color: Colors.red,
          icon: Icons.info_outline_rounded,
        );
      case DialogType.warning:
        return circleIcon(
          color: Colors.orange,
          icon: Icons.warning_amber_rounded,
        );
    }
  }
}
