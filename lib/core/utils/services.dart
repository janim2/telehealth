import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showMsg(String? msg) {
  return Fluttertoast.showToast(
      msg: msg!,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0);
}
