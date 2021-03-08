import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';

class PayField extends StatelessWidget {
  final String title;
  final String hint;
  final bool checkIcon;

  const PayField({Key key, this.title, this.hint, this.checkIcon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: regStyle,
        ),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(
            fillColor: Colors.grey[150],
            filled: true,
            hintStyle: lightStyle,
            hintText: hint,
            suffixIcon: checkIcon == true
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      "assets/icons/check.svg",
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ],
    );
  }
}
