import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:jobber/Constants/color_constants.dart';

class CommonUtils {
  static Future<bool> checkNetwork() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else {
      if (connectivityResult == ConnectivityResult.none) {
        CommonUtils.toastMessage("No Internet Connection");
        return false;
      } else {
        return true;
      }
    }
  }

  static toastMessage(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
    );
  }

  static onLoading(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            decoration: BoxDecoration(
              // border: Border.all(color: bordercolor,width: 2),
              color: ColorConstants.whiteColor,
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            padding: EdgeInsets.all(20),
            child: new Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                new CircularProgressIndicator(color: ColorConstants.blackColor,),
                SizedBox(width : 20),
                new Text('Please wait...'),
              ],
            ),
          ),
        );
      },
    );
  }
  static hideDialog(BuildContext context){
    Navigator.pop(context);
  }
}
