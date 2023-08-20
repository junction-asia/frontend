import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void toast(context, text) {
  final fToast = FToast();
  fToast.init(context);
  Widget toast = Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5.0),
      color: Colors.black,
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      child: Row(
        children: [
          const Icon(
            size: 16,
            Icons.info_outline,
            color: Colors.white,
          ),
          const SizedBox(width: 4),
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 14.0),
          )
        ],
      ),
    ),
  );

  fToast.showToast(
    gravity: ToastGravity.TOP,
    child: toast,
    toastDuration: const Duration(seconds: 1),
  );
}
