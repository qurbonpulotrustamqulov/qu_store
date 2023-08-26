
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qu_store/services/constants/c_colors.dart';

class WEPhone extends StatefulWidget {
  final void Function(String)? changed;
  final List<TextInputFormatter>? formatter;
  const WEPhone({this.formatter, this.changed, Key? key}) : super(key: key);

  @override
  State<WEPhone> createState() => _WEPhoneState();
}

class _WEPhoneState extends State<WEPhone> {
  String smsCode = '####';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: TextField(
        autofocus: true,
        maxLength: 1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 45, color: CColors.black),
        onChanged: widget.changed,
        inputFormatters: widget.formatter,
        decoration: InputDecoration(
          counterText: '',
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
                color: CColors.lightBlack,
                width: 2
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: CColors.grey.withOpacity(0.6),
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
