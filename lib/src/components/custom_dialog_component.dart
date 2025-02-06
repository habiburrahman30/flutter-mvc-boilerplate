import 'package:flutter/material.dart';

enum DialogType { primary, success, danger, warning }

class CustomDialogComponent extends StatelessWidget {
  final String title;
  final String content;
  final DialogType dialogType;
  final double height;
  final void Function()? onConfirm;
  final void Function()? onCancel;

  final bool center;
  final bool topCancelButton;

  const CustomDialogComponent({
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
    return Dialog(
      child: Stack(
        children: [
          Container(
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              // border: Border.all(color: Colors.green, width: 2),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: center
                          ? CrossAxisAlignment.center
                          : CrossAxisAlignment.start,
                      children: [
                        centerIcon(dialogType),
                        SizedBox(height: 10),
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign:
                              center ? TextAlign.center : TextAlign.start,
                          maxLines: 2,
                        ),
                        SizedBox(height: 5),
                        Text(
                          content,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                          ),
                          textAlign:
                              center ? TextAlign.center : TextAlign.start,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(10)),
                    ),
                    child: Row(
                      spacing: 15,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: onCancel,
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(
                                Colors.white,
                              ),
                              textStyle: WidgetStateProperty.all<TextStyle>(
                                TextStyle(color: Colors.black),
                              ),
                              shape: WidgetStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  // side: BorderSide(color: Colors.red),
                                ),
                              ),
                            ),
                            child: Row(
                              spacing: 5,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.clear, color: Colors.black),
                                Text(
                                  'Cancel',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: confirmButton(dialogType),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          if (topCancelButton)
            Positioned(
              right: 10,
              top: 10,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.clear,
                  color: Colors.black,
                ),
              ),
            )
        ],
      ),
    );
  }

  ElevatedButton button({
    required String text,
    required Color color,
    required IconData icon,
  }) {
    return ElevatedButton(
      onPressed: onConfirm,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          color,
        ),
        textStyle: WidgetStateProperty.all<TextStyle>(
          TextStyle(color: Colors.white),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
            // side: BorderSide(color: Colors.red),
          ),
        ),
      ),
      child: Row(
        spacing: 5,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            // Icons.delete_outline_rounded,
            icon,
            color: Colors.white,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
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

  confirmButton(DialogType dialogType) {
    switch (dialogType) {
      case DialogType.primary:
        return button(
          text: 'Confirm',
          color: Colors.deepPurpleAccent,
          icon: Icons.done_all,
        );
      case DialogType.success:
        return button(
          text: 'Ok',
          color: Colors.green,
          icon: Icons.done_all,
        );
      case DialogType.danger:
        return button(
          text: 'Delete',
          color: Colors.red,
          icon: Icons.delete_outline_rounded,
        );
      case DialogType.warning:
        return button(
          text: 'Confirm',
          color: Colors.orange,
          icon: Icons.done_all,
        );
    }
  }
}
